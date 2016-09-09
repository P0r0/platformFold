.class Lcom/baidu/mtjstatsdk/bk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/mtjstatsdk/SessionAnalysisObject;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Landroid/os/HandlerThread;

.field private static c:Landroid/os/Handler;

.field private static d:Lcom/baidu/mtjstatsdk/bk;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/mtjstatsdk/bk;->a:Ljava/util/HashMap;

    .line 29
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SessionAnalysisThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/mtjstatsdk/bk;->b:Landroid/os/HandlerThread;

    .line 36
    new-instance v0, Lcom/baidu/mtjstatsdk/bk;

    invoke-direct {v0}, Lcom/baidu/mtjstatsdk/bk;-><init>()V

    sput-object v0, Lcom/baidu/mtjstatsdk/bk;->d:Lcom/baidu/mtjstatsdk/bk;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lcom/baidu/mtjstatsdk/bk;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 44
    sget-object v0, Lcom/baidu/mtjstatsdk/bk;->b:Landroid/os/HandlerThread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 45
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/baidu/mtjstatsdk/bk;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/baidu/mtjstatsdk/bk;->c:Landroid/os/Handler;

    .line 47
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/bk;
    .registers 2

    .prologue
    .line 50
    invoke-static {p0}, Lcom/baidu/mtjstatsdk/bk;->b(Ljava/lang/String;)V

    .line 51
    sget-object v0, Lcom/baidu/mtjstatsdk/bk;->d:Lcom/baidu/mtjstatsdk/bk;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 477
    if-nez p1, :cond_11

    .line 478
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 479
    const-string v0, "statsdk"

    const-string v1, "clearLastSession(Context context):context=null"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_10
    :goto_10
    return-void

    .line 484
    :cond_11
    const-string v0, "{}"

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "__local_last_session.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, p1, v1, v0, v3}, Lcom/baidu/mtjstatsdk/ct;->a(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_10
.end method

.method static synthetic a(Lcom/baidu/mtjstatsdk/bk;Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/baidu/mtjstatsdk/bk;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 59
    if-eqz p0, :cond_a

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 60
    :cond_a
    invoke-static {p0}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "statsdk"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "AppKey can not be null"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->c([Ljava/lang/Object;)I

    .line 65
    :cond_20
    sget-object v0, Lcom/baidu/mtjstatsdk/bk;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 66
    const-string v0, "statsdk"

    const-string v1, "has contained"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :goto_2f
    return-void

    .line 68
    :cond_30
    sget-object v0, Lcom/baidu/mtjstatsdk/bk;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    invoke-direct {v1}, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;-><init>()V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f
.end method


# virtual methods
.method public a()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/mtjstatsdk/SessionAnalysisObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    sget-object v0, Lcom/baidu/mtjstatsdk/bk;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method public a(Landroid/content/Context;JLjava/lang/String;)V
    .registers 13

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    invoke-static {p4}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 81
    const-string v0, "statsdk"

    const-string v1, "AnalysisResume job"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_f
    sget-object v0, Lcom/baidu/mtjstatsdk/bk;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iget-boolean v0, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->g:Z

    if-eqz v0, :cond_2f

    .line 85
    invoke-static {p4}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 86
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "statsdk"

    aput-object v1, v0, v2

    const-string v1, "\u9057\u6f0fStatService.onPause() || missing StatService.onPause()"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->c([Ljava/lang/Object;)I

    .line 96
    :cond_2f
    sget-object v0, Lcom/baidu/mtjstatsdk/bk;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iput-boolean v3, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->g:Z

    .line 100
    sget-object v0, Lcom/baidu/mtjstatsdk/bk;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->isFirstResume()Z

    move-result v0

    if-eqz v0, :cond_99

    .line 101
    invoke-static {p4}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 102
    const-string v0, "is_first_resume=true"

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;)I

    .line 104
    :cond_52
    sget-object v0, Lcom/baidu/mtjstatsdk/bk;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    invoke-virtual {v0, v2}, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->setFirstResume(Z)V

    .line 106
    sget-object v0, Lcom/baidu/mtjstatsdk/bk;->c:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mtjstatsdk/bl;

    invoke-direct {v1, p0, p1, p4}, Lcom/baidu/mtjstatsdk/bl;-><init>(Lcom/baidu/mtjstatsdk/bk;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    :cond_67
    :goto_67
    new-instance v0, Lcom/baidu/mtjstatsdk/bo;

    sget-object v1, Lcom/baidu/mtjstatsdk/bk;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iget-wide v2, v1, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->a:J

    move-object v1, p0

    move-wide v4, p2

    move-object v6, p1

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/baidu/mtjstatsdk/bo;-><init>(Lcom/baidu/mtjstatsdk/bk;JJLandroid/content/Context;Ljava/lang/String;)V

    .line 125
    sget-object v1, Lcom/baidu/mtjstatsdk/bk;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    sget-object v0, Lcom/baidu/mtjstatsdk/bk;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->c:Ljava/lang/ref/WeakReference;

    .line 129
    sget-object v0, Lcom/baidu/mtjstatsdk/bk;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iput-wide p2, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->b:J

    .line 130
    return-void

    .line 117
    :cond_99
    invoke-static {p4}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 118
    const-string v0, "statsdk"

    const-string v1, " is_first_resume=false"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67
.end method

.method public a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
    .registers 14

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 140
    invoke-static {p5}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 141
    const-string v0, "statsdk"

    const-string v1, "AnalysisPageStart"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_f
    sget-object v0, Lcom/baidu/mtjstatsdk/bk;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iget-boolean v0, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->h:Z

    if-eqz v0, :cond_2f

    .line 145
    invoke-static {p5}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 146
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "statsdk"

    aput-object v1, v0, v2

    const-string v1, "\u9057\u6f0fStatService.onPageEnd() || missing StatService.onPageEnd()"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->c([Ljava/lang/Object;)I

    .line 150
    :cond_2f
    sget-object v0, Lcom/baidu/mtjstatsdk/bk;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iput-boolean v3, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->h:Z

    .line 154
    sget-object v0, Lcom/baidu/mtjstatsdk/bk;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->isFirstResume()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 155
    invoke-static {p5}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 156
    const-string v0, "is_first_resume=true"

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->b(Ljava/lang/String;)I

    .line 158
    :cond_52
    sget-object v0, Lcom/baidu/mtjstatsdk/bk;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    invoke-virtual {v0, v2}, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->setFirstResume(Z)V

    .line 160
    sget-object v0, Lcom/baidu/mtjstatsdk/bk;->c:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mtjstatsdk/bm;

    invoke-direct {v1, p0, p1, p5}, Lcom/baidu/mtjstatsdk/bm;-><init>(Lcom/baidu/mtjstatsdk/bk;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 177
    :cond_67
    :goto_67
    new-instance v0, Lcom/baidu/mtjstatsdk/bo;

    sget-object v1, Lcom/baidu/mtjstatsdk/bk;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iget-wide v2, v1, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->a:J

    move-object v1, p0

    move-wide v4, p2

    move-object v6, p1

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/baidu/mtjstatsdk/bo;-><init>(Lcom/baidu/mtjstatsdk/bk;JJLandroid/content/Context;Ljava/lang/String;)V

    .line 179
    sget-object v1, Lcom/baidu/mtjstatsdk/bk;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 180
    sget-object v0, Lcom/baidu/mtjstatsdk/bk;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iput-object p4, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->i:Ljava/lang/String;

    .line 182
    sget-object v0, Lcom/baidu/mtjstatsdk/bk;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->c:Ljava/lang/ref/WeakReference;

    .line 183
    sget-object v0, Lcom/baidu/mtjstatsdk/bk;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iput-wide p2, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->b:J

    .line 184
    return-void

    .line 171
    :cond_a3
    invoke-static {p5}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 172
    const-string v0, "statsdk"

    const-string v1, " is_first_resume=false"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67
.end method

.method public b(Landroid/content/Context;JLjava/lang/String;)V
    .registers 15

    .prologue
    const/4 v2, 0x0

    .line 288
    invoke-static {p4}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 289
    const-string v0, "statsdk"

    const-string v1, "post pause job"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_e
    sget-object v0, Lcom/baidu/mtjstatsdk/bk;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iget-boolean v0, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->g:Z

    if-nez v0, :cond_30

    .line 294
    invoke-static {p4}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 295
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "statsdk"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "\u9057\u6f0fStatService.onResume() || missing StatService.onResume()"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/cw;->c([Ljava/lang/Object;)I

    .line 315
    :cond_2f
    :goto_2f
    return-void

    .line 304
    :cond_30
    sget-object v0, Lcom/baidu/mtjstatsdk/bk;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iput-boolean v2, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->g:Z

    .line 307
    new-instance v0, Lcom/baidu/mtjstatsdk/bn;

    sget-object v1, Lcom/baidu/mtjstatsdk/bk;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iget-wide v5, v1, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->b:J

    sget-object v1, Lcom/baidu/mtjstatsdk/bk;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iget-object v1, v1, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    const/4 v8, 0x0

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p1

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/baidu/mtjstatsdk/bn;-><init>(Lcom/baidu/mtjstatsdk/bk;JLandroid/content/Context;JLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    sget-object v1, Lcom/baidu/mtjstatsdk/bk;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 313
    sget-object v0, Lcom/baidu/mtjstatsdk/bk;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    iput-wide p2, v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->a:J

    goto :goto_2f
.end method

.method public b(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
    .registers 18

    .prologue
    .line 324
    invoke-static/range {p5 .. p5}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 325
    const-string v1, "statsdk"

    const-string v2, "post pause job"

    invoke-static {v1, v2}, Lcom/baidu/mtjstatsdk/cw;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_d
    sget-object v1, Lcom/baidu/mtjstatsdk/bk;->a:Ljava/util/HashMap;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    .line 328
    iget-boolean v1, v11, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->h:Z

    if-nez v1, :cond_33

    .line 330
    invoke-static/range {p5 .. p5}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 331
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "statsdk"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Please check (1)\u9057\u6f0fStatService.onPageStart() || missing StatService.onPageStart()"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/cw;->c([Ljava/lang/Object;)I

    .line 356
    :cond_32
    :goto_32
    return-void

    .line 338
    :cond_33
    const/4 v1, 0x0

    iput-boolean v1, v11, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->h:Z

    .line 339
    iget-object v1, v11, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->i:Ljava/lang/String;

    if-eqz v1, :cond_44

    iget-object v1, v11, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->i:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_86

    .line 340
    :cond_44
    invoke-static/range {p5 .. p5}, Lcom/baidu/mtjstatsdk/cs;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 341
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "statsdk"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Please check the reason : (1)\u9057\u6f0fStatService.onPageStart() || missing StatService.onPageStart() || (2)\u9875\u9762\u7684\u8d77\u59cb\u548c\u7ed3\u675f\u4e0d\u662f\u540c\u4e00\u9875\u9762 || The page "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name is not equal "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "to the page end "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/cw;->c([Ljava/lang/Object;)I

    goto :goto_32

    .line 348
    :cond_86
    new-instance v1, Lcom/baidu/mtjstatsdk/bn;

    iget-wide v6, v11, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->b:J

    iget-object v2, v11, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Context;

    move-object v2, p0

    move-wide v3, p2

    move-object v5, p1

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v1 .. v10}, Lcom/baidu/mtjstatsdk/bn;-><init>(Lcom/baidu/mtjstatsdk/bk;JLandroid/content/Context;JLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    sget-object v2, Lcom/baidu/mtjstatsdk/bk;->c:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 354
    iput-wide p2, v11, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->a:J

    goto :goto_32
.end method
