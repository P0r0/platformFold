.class Lcom/huanju/data/net/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huanju/data/a/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/huanju/data/a/e",
        "<",
        "Lcom/huanju/data/net/AbstractNetTask;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/huanju/data/net/a;


# direct methods
.method constructor <init>(Lcom/huanju/data/net/a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/huanju/data/net/j;->c:Lcom/huanju/data/net/a;

    iput-object p2, p0, Lcom/huanju/data/net/j;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/huanju/data/net/j;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/huanju/data/net/AbstractNetTask;)Z
    .registers 4

    iget-object v0, p0, Lcom/huanju/data/net/j;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/huanju/data/net/AbstractNetTask;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/huanju/data/net/j;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/huanju/data/net/AbstractNetTask;->getAppID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Lcom/huanju/data/net/AbstractNetTask;

    invoke-virtual {p0, p1}, Lcom/huanju/data/net/j;->a(Lcom/huanju/data/net/AbstractNetTask;)Z

    move-result v0

    return v0
.end method
