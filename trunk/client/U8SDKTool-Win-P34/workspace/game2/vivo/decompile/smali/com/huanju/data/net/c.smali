.class public Lcom/huanju/data/net/c;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/data/net/c;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/data/net/c;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/data/net/c;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huanju/data/net/c;->d:Z

    return-void
.end method
