.class public Lcom/huanju/data/content/raw/info/t;
.super Lcom/huanju/data/net/AbstractNetTask;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/huanju/data/net/AbstractNetTask$ReqType;->Get:Lcom/huanju/data/net/AbstractNetTask$ReqType;

    invoke-direct {p0, p1, v0}, Lcom/huanju/data/net/AbstractNetTask;-><init>(Landroid/content/Context;Lcom/huanju/data/net/AbstractNetTask$ReqType;)V

    const/16 v0, 0xa

    iput v0, p0, Lcom/huanju/data/content/raw/info/t;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/data/content/raw/info/t;->b:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/huanju/data/content/raw/info/t;->c:I

    iput p2, p0, Lcom/huanju/data/content/raw/info/t;->a:I

    iput p3, p0, Lcom/huanju/data/content/raw/info/t;->c:I

    iput-object p4, p0, Lcom/huanju/data/content/raw/info/t;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getEntity()Lorg/apache/http/HttpEntity;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLaunchMode()Lcom/huanju/data/net/AbstractNetTask$LaunchMode;
    .registers 2

    sget-object v0, Lcom/huanju/data/net/AbstractNetTask$LaunchMode;->addnew:Lcom/huanju/data/net/AbstractNetTask$LaunchMode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "HjRequestBatchInfoTask"

    return-object v0
.end method

.method protected getURL()Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/huanju/data/a/f;->o:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/huanju/data/content/raw/info/t;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/huanju/data/content/raw/info/t;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/huanju/data/content/raw/info/t;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onAddHeaders(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .registers 2

    return-void
.end method
