.class Lcom/baidu/mtjstatsdk/bo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mtjstatsdk/bk;

.field private b:J

.field private c:J

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/baidu/mtjstatsdk/bk;JJLandroid/content/Context;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 212
    iput-object p1, p0, Lcom/baidu/mtjstatsdk/bo;->a:Lcom/baidu/mtjstatsdk/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-wide p2, p0, Lcom/baidu/mtjstatsdk/bo;->b:J

    .line 216
    iput-wide p4, p0, Lcom/baidu/mtjstatsdk/bo;->c:J

    .line 218
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/bo;->d:Ljava/lang/ref/WeakReference;

    .line 220
    iput-object p7, p0, Lcom/baidu/mtjstatsdk/bo;->e:Ljava/lang/String;

    .line 221
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 230
    iget-wide v0, p0, Lcom/baidu/mtjstatsdk/bo;->c:J

    iget-wide v2, p0, Lcom/baidu/mtjstatsdk/bo;->b:J

    sub-long v2, v0, v2

    sget-object v0, Lcom/baidu/mtjstatsdk/bk;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/bo;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->getSessionPeriod()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_b2

    iget-wide v0, p0, Lcom/baidu/mtjstatsdk/bo;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_b2

    .line 232
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/bo;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b2

    .line 233
    const-string v0, "statsdk"

    const-string v1, "======StatAnalysisResumeJob more than 30S and send log======="

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    sget-object v0, Lcom/baidu/mtjstatsdk/bk;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/bo;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->d:Lcom/baidu/mtjstatsdk/cp;

    iget-wide v2, p0, Lcom/baidu/mtjstatsdk/bo;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/baidu/mtjstatsdk/cp;->b(J)V

    .line 237
    sget-object v0, Lcom/baidu/mtjstatsdk/bk;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/baidu/mtjstatsdk/bo;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->d:Lcom/baidu/mtjstatsdk/cp;

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/cp;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/bo;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 241
    const-string v1, "statsdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new session:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_75
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/bo;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/DataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/DataCore;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/bo;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/baidu/mtjstatsdk/DataCore;->putSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/bo;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 250
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/bo;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/DataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/DataCore;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/bo;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/baidu/mtjstatsdk/DataCore;->flush(Landroid/content/Context;Ljava/lang/String;)V

    .line 253
    sget-object v1, Lcom/baidu/mtjstatsdk/bk;->a:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/bo;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iget-object v1, v1, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->d:Lcom/baidu/mtjstatsdk/cp;

    invoke-virtual {v1}, Lcom/baidu/mtjstatsdk/cp;->b()V

    .line 254
    iget-object v1, p0, Lcom/baidu/mtjstatsdk/bo;->a:Lcom/baidu/mtjstatsdk/bk;

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/bo;->e:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/baidu/mtjstatsdk/bk;->a(Lcom/baidu/mtjstatsdk/bk;Landroid/content/Context;Ljava/lang/String;)V

    .line 261
    invoke-static {}, Lcom/baidu/mtjstatsdk/bg;->a()Lcom/baidu/mtjstatsdk/bg;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mtjstatsdk/bo;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/baidu/mtjstatsdk/bg;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 278
    :cond_b2
    return-void
.end method
