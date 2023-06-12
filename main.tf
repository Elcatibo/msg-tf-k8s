# Erzeuge den Pod fuer flask
resource "kubernetes_pod" "flask" {
  metadata {
    name = var.name
    labels = {
      app = "flask"
    }

  }

  spec {

    container {
      image = var.container_version
      name  = var.container_name

    }
  }
}

# Erzeuge einen Service
resource "kubernetes_service" "flask" {
  metadata {
    name = var.resource_name
  }
  spec {
    selector = {
      app = kubernetes_pod.flask.metadata.0.labels.app
    }
    port {
      port        = 5000
      node_port   = 30201
    }

    type = "NodePort"
  }

  depends_on = [
    kubernetes_pod.flask
  ]
}

#########################################################################

