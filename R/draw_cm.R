#' Displays the cognitive map as a simple graph.
#'
#' This function is used to provide a first simple visualisation of the CM as
#' recorded in the edgelist and nodelist. The "interactive_CM_visualization
#' function in this package provides a more sufficated and easier to read graph
#' (see below).It takes an edgelist and nodelist, you may use either the original
#' nodelist or the node_measures list.
#'
#' @param edgelist an edgelist
#' @param nodelist an nodelist
#' @return Returns a visual graph
#' @export
#' @examples
#' \dontrun{
#' # Load the data
#' data("edgelist", "nodelist")
#' }
draw_cm <- function(edgelist, nodelist){

cm <- igraph::graph_from_data_frame(d=edgelist, vertices=nodelist, directed = T)# make map from df

base::plot(cm, mode = "fruchtermanreingold", edge.arrow.size=.08, edge.curved=.2, edge.width=.18, #draw pretty graph
     edge.color = dplyr::case_when (edgelist$edge_value>0 ~ "green",
                             edgelist$edge_value<0 ~ "red",
                             edgelist$edge_value==0 ~ "black"),
     vertex.size =0.4, vertex.shape= "none",vertex.label=nodelist$node_name,
     vertex.label.color = dplyr::case_when (nodelist > 0 ~ "blue",
                                     nodelist <0 ~ "red",
                                     nodelist == 0 ~ "black"), vertex.label.cex=.15)
}