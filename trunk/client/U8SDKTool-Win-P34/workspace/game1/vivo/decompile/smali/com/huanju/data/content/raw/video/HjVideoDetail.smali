.class public Lcom/huanju/data/content/raw/video/HjVideoDetail;
.super Ljava/lang/Object;


# instance fields
.field public approval_cnt:Ljava/lang/String;

.field public ctime:J

.field public desc:Ljava/lang/String;

.field public keywords:[Ljava/lang/String;

.field public preview:Ljava/lang/String;

.field public recList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huanju/data/content/raw/video/HjVideoListItem;",
            ">;"
        }
    .end annotation
.end field

.field public tag:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public v_cnt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/data/content/raw/video/HjVideoDetail;->title:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/data/content/raw/video/HjVideoDetail;->desc:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/data/content/raw/video/HjVideoDetail;->preview:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/data/content/raw/video/HjVideoDetail;->tag:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/data/content/raw/video/HjVideoDetail;->keywords:[Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huanju/data/content/raw/video/HjVideoDetail;->ctime:J

    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/data/content/raw/video/HjVideoDetail;->v_cnt:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/data/content/raw/video/HjVideoDetail;->url:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huanju/data/content/raw/video/HjVideoDetail;->recList:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/data/content/raw/video/HjVideoDetail;->approval_cnt:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "title="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/huanju/data/content/raw/video/HjVideoDetail;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ";ctime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/huanju/data/content/raw/video/HjVideoDetail;->ctime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ";url="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/huanju/data/content/raw/video/HjVideoDetail;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/huanju/data/content/raw/video/HjVideoDetail;->recList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_53
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huanju/data/content/raw/video/HjVideoListItem;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/huanju/data/content/raw/video/HjVideoListItem;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_53

    :cond_7a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    return-object v0
.end method
