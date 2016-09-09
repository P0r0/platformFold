.class public Lcom/baidu/mtjstatsdk/DataCoreObject;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:Lorg/json/JSONObject;

.field c:Lorg/json/JSONArray;

.field d:Lorg/json/JSONArray;

.field e:Lorg/json/JSONArray;

.field f:Lorg/json/JSONArray;

.field g:Z

.field h:Lcom/baidu/mtjstatsdk/HeadObject;

.field private i:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v1, p0, Lcom/baidu/mtjstatsdk/DataCoreObject;->i:I

    .line 17
    iput v1, p0, Lcom/baidu/mtjstatsdk/DataCoreObject;->a:I

    .line 21
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/DataCoreObject;->b:Lorg/json/JSONObject;

    .line 26
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/DataCoreObject;->c:Lorg/json/JSONArray;

    .line 27
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/DataCoreObject;->d:Lorg/json/JSONArray;

    .line 28
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/DataCoreObject;->e:Lorg/json/JSONArray;

    .line 29
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/DataCoreObject;->f:Lorg/json/JSONArray;

    .line 32
    iput-boolean v1, p0, Lcom/baidu/mtjstatsdk/DataCoreObject;->g:Z

    .line 34
    new-instance v0, Lcom/baidu/mtjstatsdk/HeadObject;

    invoke-direct {v0}, Lcom/baidu/mtjstatsdk/HeadObject;-><init>()V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/DataCoreObject;->h:Lcom/baidu/mtjstatsdk/HeadObject;

    .line 37
    return-void
.end method


# virtual methods
.method a()I
    .registers 2

    .prologue
    .line 44
    iget v0, p0, Lcom/baidu/mtjstatsdk/DataCoreObject;->i:I

    return v0
.end method

.method a(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 49
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/DataCoreObject;->h:Lcom/baidu/mtjstatsdk/HeadObject;

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/HeadObject;->getCuid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_55

    .line 50
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/DataCoreObject;->h:Lcom/baidu/mtjstatsdk/HeadObject;

    invoke-static {}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/BasicStoreTools;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->loadGenerateDeviceCUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mtjstatsdk/HeadObject;->setCuid(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/DataCoreObject;->h:Lcom/baidu/mtjstatsdk/HeadObject;

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/HeadObject;->getCuid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2b

    const-string v0, ""

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/DataCoreObject;->h:Lcom/baidu/mtjstatsdk/HeadObject;

    invoke-virtual {v1}, Lcom/baidu/mtjstatsdk/HeadObject;->getCuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 56
    :cond_2b
    :try_start_2b
    invoke-static {p1}, Lcom/baidu/mtjstatsdk/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 57
    const-string v1, "\\s*|\t|\r|\n"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 59
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 60
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/baidu/mtjstatsdk/HeadObject;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/DataCoreObject;->h:Lcom/baidu/mtjstatsdk/HeadObject;

    invoke-virtual {v1, v0}, Lcom/baidu/mtjstatsdk/HeadObject;->setCuid(Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/BasicStoreTools;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/DataCoreObject;->h:Lcom/baidu/mtjstatsdk/HeadObject;

    invoke-virtual {v1}, Lcom/baidu/mtjstatsdk/HeadObject;->getCuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->setGenerateDeviceCUID(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_55} :catch_5c

    .line 72
    :cond_55
    :goto_55
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/DataCoreObject;->h:Lcom/baidu/mtjstatsdk/HeadObject;

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/HeadObject;->getCuid()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 66
    :catch_5c
    move-exception v0

    .line 67
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "statsdk"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/cw;->c([Ljava/lang/Object;)I

    goto :goto_55
.end method

.method a(I)V
    .registers 2

    .prologue
    .line 40
    iput p1, p0, Lcom/baidu/mtjstatsdk/DataCoreObject;->i:I

    .line 41
    return-void
.end method
