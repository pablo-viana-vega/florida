<?php

if ( ! defined( 'ABSPATH' ) ) {
  exit;
}

if( ! class_exists( 'MywpAbstractSettingModule' ) ) {
  return false;
}

if ( ! class_exists( 'MywpSettingScreenAdminComments' ) ) :

final class MywpSettingScreenAdminComments extends MywpAbstractSettingColumnsModule {

  static protected $id = 'admin_comments';

  static protected $priority = 80;

  static private $menu = 'admin';

  public static function mywp_setting_screens( $setting_screens ) {

    $setting_screens[ self::$id ] = array(
      'title' => __( 'Comments' ),
      'menu' => self::$menu,
      'controller' => 'admin_comments',
      'use_advance' => true,
      'document_url' => self::get_document_url( 'document/admin-comment/' ),
    );

    return $setting_screens;

  }

  public static function ajax_add_column() {

    $action_name = MywpSetting::get_ajax_action_name( self::$id , 'add_column' );

    if( empty( $_POST[ $action_name ] ) ) {

      return false;

    }

    check_ajax_referer( $action_name , $action_name );

    if( empty( $_POST['add_column_id'] ) ) {

      return false;

    }

    $add_column_id = strip_tags( $_POST['add_column_id'] );

    static::set_list_column_id();

    $available_list_columns = self::get_available_list_columns();

    if( empty( $available_list_columns ) ) {

      return false;

    }

    $found_column = false;

    foreach( $available_list_columns as $group => $list_columns ) {

      if( empty( $list_columns['columns'] ) ) {

        continue;

      }

      foreach( $list_columns['columns'] as $column_id => $list_column ) {

        if( $column_id === $add_column_id ) {

          $found_column = $list_column;

          break;

        }

      }

    }

    if( empty( $found_column ) ) {

      return false;

    }

    $result_html = '';

    ob_start();

    self::print_item( $found_column );

    $result_html .= ob_get_contents();

    ob_end_clean();

    wp_send_json_success( array( 'result_html' => $result_html ) );

  }

  public static function mywp_current_admin_print_footer_scripts() {

?>
<script>
jQuery(function( $ ) {

  $('#setting-screen-setting-list-columns #setting-list-columns-available-add-column').on('click', function() {

    var $available_column = $(this).parent();

    var $spinner = $available_column.find('.spinner');

    var select_column_key = $available_column.find('#setting-list-columns-available-select-column').val();

    if( select_column_key == null || select_column_key == '' ) {

      return false;

    }

    var $available_columnm_key = $available_column.find('.available-column.column-key-' + select_column_key);

    if( ! $available_columnm_key.length ) {

      return false;

    }

    var add_column_id = $available_columnm_key.find('.id').val();

    if( add_column_id == null || add_column_id == '' ) {

      return false;

    }

    var $already_column = false;

    $(document).find('#setting-screen-setting-list-columns #setting-list-columns-setting-columns-items .list-columns-item').each( function( index , el ) {

      var list_column_item_id = $(el).find('.list-column-item-id').val();

      if( list_column_item_id == add_column_id ) {

        $already_column = $(el);

        $(el).addClass('already');

        setTimeout( function() {

          $(el).removeClass('already');

        }, 2000);

        return false;

      }

    });

    if( $already_column != false ) {

      alert( mywp_admin_setting.column_already_added );

      var scroll_position = $already_column.offset().top;

      scroll_position = ( scroll_position - 80 );

      $( 'html,body' ).animate({
        scrollTop: scroll_position
      });

      return false;

    }

    PostData = {
      action: '<?php echo MywpSetting::get_ajax_action_name( self::$id , 'add_column' ); ?>',
      <?php echo MywpSetting::get_ajax_action_name( self::$id , 'add_column' ); ?>: '<?php echo wp_create_nonce( MywpSetting::get_ajax_action_name( self::$id , 'add_column' ) ); ?>',
      add_column_id: add_column_id
      <?php do_action( 'mywp_setting_admin_uploads_available_column_add_post_data_JS' ); ?>
    };

    $spinner.css('visibility', 'visible');

    $.ajax({
      type: 'post',
      url: ajaxurl,
      data: PostData
    }).done( function( xhr ) {

      if( typeof xhr !== 'object' || xhr.success === undefined ) {

        alert( '<?php _e( 'An error has occurred. Please reload the page and try again.' ); ?>' );

        $spinner.css('visibility', 'hidden');

        return false;

      }

      if( xhr.data.result_html === undefined ) {

        alert( '<?php _e( 'An error has occurred. Please reload the page and try again.' ); ?>' );

        $spinner.css('visibility', 'hidden');

        return false;

      }

      $(document).find('#setting-list-columns-setting-columns-items').append( xhr.data.result_html );

      $(document).find('.list-columns-sortable-items').sortable({
        connectWith: '.list-columns-sortable-items'
      });

      $available_column.find('.spinner').css('visibility', 'hidden');

      var scroll_position = $(document).find('#setting-list-columns-setting-columns-items .list-columns-item').last().offset().top;

      scroll_position = ( scroll_position - 40 );

      $( 'html,body' ).animate({
        scrollTop: scroll_position
      });

    }).fail( function( xhr ) {

      alert( '<?php _e( 'An error has occurred. Please reload the page and try again.' ); ?>' );

      $spinner.css('visibility', 'hidden');

      return false;

    });

  });

});
</script>
<?php

  }

  public static function mywp_current_setting_screen_advance_content() {

    $setting_data = self::get_setting_data();

    ?>
    <h3 class="mywp-setting-screen-subtitle"><?php _e( 'Other' , 'my-wp' ); ?></h3>
    <table class="form-table">
      <tbody>
        <tr>
          <th><?php _e( 'Number of items per page:' ); ?></th>
          <td>
            <label>
              <input type="number" name="mywp[data][per_page_num]" class="per_page_num small-text" value="<?php echo esc_attr( $setting_data['per_page_num'] ); ?>" placeholder="20" />
            </label>
          </td>
        </tr>
        <tr>
          <th><?php _e( 'Search Comments' ); ?></th>
          <td>
            <label>
              <input type="checkbox" name="mywp[data][hide_search_box]" class="hide_search_box" value="1" <?php checked( $setting_data['hide_search_box'] , true ); ?> />
              <?php _e( 'Hide' ); ?>
            </label>
          </td>
        </tr>
      </tbody>
    </table>
    <p>&nbsp;</p>
    <?php

  }

  protected static function set_list_column_id() {

    self::$list_column_id = 'edit-comments';

  }

  protected static function get_list_link() {

    $list_link = admin_url( 'edit-comments.php' );

    return $list_link;

  }

  protected static function get_core_list_columns() {

    $core_list_columns = array(
      'cb' => array(
        'id' => 'cb',
        'type' => 'core',
        'sort' => false,
        'orderby' => '',
        'default_title' => '<input type="checkbox" />',
        'title' => '<input type="checkbox" />',
        'width' => '2.2em',
      ),
      'author' => array(
        'id' => 'author',
        'type' => 'core',
        'sort' => true,
        'orderby' => 'comment_author',
        'default_title' => __( 'Author' ),
        'title' => __( 'Author' ),
        'width' => '20%',
      ),
      'comment' => array(
        'id' => 'comment',
        'type' => 'core',
        'sort' => false,
        'orderby' => '',
        'default_title' => __( 'Comments' ),
        'title' => __( 'Comments' ),
        'width' => '',
      ),
      'response' => array(
        'id' => 'response',
        'type' => 'core',
        'sort' => true,
        'orderby' => 'comment_post_ID',
        'default_title' => __( 'In Response To' ),
        'title' => __( 'In Response To' ),
        'width' => '15%',
      ),
      'date' => array(
        'id' => 'date',
        'type' => 'core',
        'sort' => true,
        'orderby' => 'comment_date',
        'default_title' => _x( 'Date' , 'column name' ),
        'title' => _x( 'Date' , 'column name' ),
        'width' => '14%',
      ),
      'id' => array(
        'id' => 'id',
        'type' => 'core',
        'sort' => false,
        'orderby' => 'comment_ID',
        'default_title' => __( 'ID' , 'my-wp' ),
        'title' => __( 'ID' , 'my-wp' ),
        'width' => '',
      ),
      'comment_author' => array(
        'id' => 'comment_author',
        'type' => 'core',
        'sort' => true,
        'orderby' => 'comment_author',
        'default_title' => __( 'Name' ),
        'title' => __( 'Name' ),
        'width' => '',
      ),
      'comment_author_email' => array(
        'id' => 'comment_author_email',
        'type' => 'core',
        'sort' => true,
        'orderby' => 'comment_author_email',
        'default_title' => __( 'Email' ),
        'title' => __( 'Email' ),
        'width' => '',
      ),
      'comment_author_url' => array(
        'id' => 'comment_author_url',
        'type' => 'core',
        'sort' => true,
        'orderby' => 'comment_author_url',
        'default_title' => __( 'URL' ),
        'title' => __( 'URL' ),
        'width' => '',
      ),
    );

    return $core_list_columns;

  }

  public static function current_available_list_columns( $available_list_columns ) {

    $called_text = sprintf( '%s::%s( %s )' , __CLASS__ , __FUNCTION__ , '$available_list_columns' );

    if( empty( $available_list_columns['core']['columns'] ) ) {

      MywpHelper::error_require_message( '$available_list_columns["core"]["columns"]' , $called_text );

      return false;

    }

    $available_list_columns['other'] = array(
      'title' => __( 'Other' , 'my-wp' ),
      'columns' => array(),
    );

    $core_list_columns = self::get_core_list_columns();

    $default_list_columns = self::get_default_list_columns();

    foreach( $default_list_columns['columns'] as $column_id => $column_title ) {

      if( isset( $core_list_columns[ $column_id ] ) ) {

        continue;

      }

      $available_list_column = array(
        'id' => $column_id,
        'type' => 'other',
        'sort' => false,
        'orderby' => '',
        'default_title' => $column_title,
        'title' => $column_title,
        'width' => '',
      );

      if( isset( $default_list_columns['sortables'][ $column_id ] ) ) {

        $available_list_column['sort'] = true;

      }

      $available_list_columns['other']['columns'][ $column_id ] = $available_list_column;

    }

    return $available_list_columns;

  }

  public static function mywp_current_setting_post_data_format_update( $formatted_data ) {

    $mywp_model = self::get_model();

    if( empty( $mywp_model ) ) {

      return $formatted_data;

    }

    $new_formatted_data = $mywp_model->get_initial_data();

    $new_formatted_data['advance'] = $formatted_data['advance'];

    if( ! empty( $formatted_data['list_columns'] ) ) {

      foreach( $formatted_data['list_columns'] as $list_column_id => $list_column_setting ) {

        $list_column_id = strip_tags( $list_column_id );

        $new_list_column_setting = array(
          'id' => $list_column_id,
          'sort' => '',
          'orderby' => '',
          'title' => '',
          'width' => '',
        );

        if( ! empty( $list_column_setting['sort'] ) ) {

          $new_list_column_setting['sort'] = true;

        }

        if( ! empty( $list_column_setting['title'] ) ) {

          $new_list_column_setting['title'] = wp_unslash( $list_column_setting['title'] );

        }

        if( ! empty( $list_column_setting['orderby'] ) ) {

          $new_list_column_setting['orderby'] = wp_unslash( $list_column_setting['orderby'] );

        }

        if( ! empty( $list_column_setting['width'] ) ) {

          $new_list_column_setting['width'] = strip_tags( $list_column_setting['width'] );

        }

        $new_formatted_data['list_columns'][ $list_column_id ] = $new_list_column_setting;

      }

    }

    if( ! empty( $formatted_data['per_page_num'] ) ) {

      $new_formatted_data['per_page_num'] = intval( $formatted_data['per_page_num'] );

    }

    if( ! empty( $formatted_data['hide_search_box'] ) ) {

      $new_formatted_data['hide_search_box'] = true;

    }

    return $new_formatted_data;

  }

  public static function mywp_current_setting_before_post_data_action_remove( $validated_data ) {

    static::set_list_column_id();

    self::delete_current_list_columns();

  }

}

MywpSettingScreenAdminComments::init();

endif;
