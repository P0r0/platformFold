.class public Lcom/baidu/mtjstatsdk/SessionAnalysisObject;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:J

.field b:J

.field c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/baidu/mtjstatsdk/cp;

.field e:I

.field f:Z

.field g:Z

.field h:Z

.field i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide v2, p0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->a:J

    .line 30
    iput-wide v2, p0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->b:J

    .line 40
    new-instance v0, Lcom/baidu/mtjstatsdk/cp;

    invoke-direct {v0}, Lcom/baidu/mtjstatsdk/cp;-><init>()V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->d:Lcom/baidu/mtjstatsdk/cp;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->e:I

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->f:Z

    .line 55
    iput-boolean v1, p0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->g:Z

    .line 63
    iput-boolean v1, p0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->h:Z

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public flushSession(Landroid/content/Context;JLjava/lang/String;)V
    .registers 11

    .prologue
    const/4 v4, 0x0

    .line 102
    invoke-static {p4}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 103
    const-string v0, "statsdk"

    const-string v1, "flush current session to last_session.json"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_e
    const-string v0, "{}"

    .line 106
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 107
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->d:Lcom/baidu/mtjstatsdk/cp;

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/cp;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 111
    :try_start_1b
    const-string v1, "e"

    invoke-virtual {v0, v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_20} :catch_59

    .line 117
    :cond_20
    :goto_20
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {p4}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 119
    const-string v1, "statsdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cacheString="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "__local_last_session.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, p1, v1, v0, v4}, Lcom/baidu/mtjstatsdk/ct;->a(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 122
    return-void

    .line 112
    :catch_59
    move-exception v1

    .line 113
    invoke-static {p4}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 114
    const-string v1, "statsdk"

    const-string v2, "StatSession.flushSession() failed"

    invoke-static {v1, v2}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method public getSessionPeriod()I
    .registers 3

    .prologue
    .line 68
    iget v0, p0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 69
    const/16 v0, 0x7530

    iput v0, p0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->e:I

    .line 71
    :cond_9
    iget v0, p0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->e:I

    return v0
.end method

.method public getSessionStartTime()J
    .registers 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->d:Lcom/baidu/mtjstatsdk/cp;

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/cp;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public isFirstResume()Z
    .registers 2

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->f:Z

    return v0
.end method

.method public setFirstResume(Z)V
    .registers 2

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->f:Z

    .line 85
    return-void
.end method

.method public setSessionCounted()V
    .registers 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->d:Lcom/baidu/mtjstatsdk/cp;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->d:Lcom/baidu/mtjstatsdk/cp;

    invoke-virtual {v1}, Lcom/baidu/mtjstatsdk/cp;->d()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/mtjstatsdk/cp;->a(I)V

    .line 89
    return-void
.end method

.method public setSessionPeriod(I)V
    .registers 3

    .prologue
    .line 75
    mul-int/lit16 v0, p1, 0x3e8

    iput v0, p0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->e:I

    .line 76
    return-void
.end method
