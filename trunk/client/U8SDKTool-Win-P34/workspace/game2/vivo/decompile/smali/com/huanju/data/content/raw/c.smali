.class Lcom/huanju/data/content/raw/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/huanju/data/net/AbstractNetTask;

.field final synthetic b:Lcom/huanju/data/content/raw/a;


# direct methods
.method constructor <init>(Lcom/huanju/data/content/raw/a;Lcom/huanju/data/net/AbstractNetTask;)V
    .registers 3

    iput-object p1, p0, Lcom/huanju/data/content/raw/c;->b:Lcom/huanju/data/content/raw/a;

    iput-object p2, p0, Lcom/huanju/data/content/raw/c;->a:Lcom/huanju/data/net/AbstractNetTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/huanju/data/content/raw/c;->a:Lcom/huanju/data/net/AbstractNetTask;

    invoke-virtual {v0}, Lcom/huanju/data/net/AbstractNetTask;->execute()V

    return-void
.end method
