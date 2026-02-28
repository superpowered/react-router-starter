<?php

/**
 * Register REST API endpoint
 */
add_action('rest_api_init', function () {
  // Endpoint to fetch story posts
  register_rest_route('v1', '/test', [
    'methods' => 'GET',
    'callback' => 'get_test_endpoint',
  ]);
});

/**
 * REST endpoint callback
 * 
 * @param WP_REST_Request $request REST request object
 * @return WP_REST_Response
 */
function get_test_endpoint($request)
{
  $offset = $request->get_param('offset');
  return new WP_REST_Response([
    'posts' => [1],
    'found' => true,
    'has_more' => false,
    'offset' => $offset,
    'content' => 'Hello dumbass',
  ], 200);
}