.class Lcom/huanju/data/content/raw/info/u;
.super Lcom/huanju/data/net/AbstractNetTask;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    sget-object v0, Lcom/huanju/data/net/AbstractNetTask$ReqType;->Get:Lcom/huanju/data/net/AbstractNetTask$ReqType;

    invoke-direct {p0, p1, v0}, Lcom/huanju/data/net/AbstractNetTask;-><init>(Landroid/content/Context;Lcom/huanju/data/net/AbstractNetTask$ReqType;)V

    const-string v0, "1"

    iput-object v0, p0, Lcom/huanju/data/content/raw/info/u;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/huanju/data/content/raw/info/u;->c:I

    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/data/content/raw/info/u;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/huanju/data/content/raw/info/u;->b:Landroid/content/Context;

    iput p3, p0, Lcom/huanju/data/content/raw/info/u;->c:I

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

    const-string v0, "HjRequestInfoDetailTask"

    return-object v0
.end method

.method protected getURL()Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/huanju/data/a/f;->d:Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/huanju/data/content/raw/info/u;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/huanju/data/content/raw/info/u;->getAppID()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "20002a"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/huanju/data/content/raw/info/u;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onAddHeaders(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .registers 2

    return-void
.end method
