.class Lcom/baidu/wallet/base/stastics/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/wallet/base/stastics/p$a;,
        Lcom/baidu/wallet/base/stastics/p$b;,
        Lcom/baidu/wallet/base/stastics/p$c;
    }
.end annotation


# static fields
.field public static a:Z

.field static b:Ljava/util/HashMap;

.field private static c:Landroid/os/HandlerThread;

.field private static d:Landroid/os/Handler;

.field private static i:Lcom/baidu/wallet/base/stastics/p;


# instance fields
.field private e:J

.field private f:Ljava/lang/ref/WeakReference;

.field private g:J

.field private final h:Lcom/baidu/wallet/base/stastics/o;

.field private j:I

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SessionAnalysisThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/wallet/base/stastics/p;->c:Landroid/os/HandlerThread;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/wallet/base/stastics/p;->a:Z

    new-instance v0, Lcom/baidu/wallet/base/stastics/p;

    invoke-direct {v0}, Lcom/baidu/wallet/base/stastics/p;-><init>()V

    sput-object v0, Lcom/baidu/wallet/base/stastics/p;->i:Lcom/baidu/wallet/base/stastics/p;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/wallet/base/stastics/p;->b:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/baidu/wallet/base/stastics/p;->e:J

    iput-wide v0, p0, Lcom/baidu/wallet/base/stastics/p;->g:J

    new-instance v0, Lcom/baidu/wallet/base/stastics/o;

    invoke-direct {v0}, Lcom/baidu/wallet/base/stastics/o;-><init>()V

    iput-object v0, p0, Lcom/baidu/wallet/base/stastics/p;->h:Lcom/baidu/wallet/base/stastics/o;

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/wallet/base/stastics/p;->j:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/wallet/base/stastics/p;->k:Z

    sget-object v0, Lcom/baidu/wallet/base/stastics/p;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    sget-object v0, Lcom/baidu/wallet/base/stastics/p;->c:Landroid/os/HandlerThread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/baidu/wallet/base/stastics/p;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/baidu/wallet/base/stastics/p;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/baidu/wallet/base/stastics/p;)Lcom/baidu/wallet/base/stastics/o;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/base/stastics/p;->h:Lcom/baidu/wallet/base/stastics/o;

    return-object v0
.end method

.method private a(Landroid/content/Context;J)V
    .registers 8

    const-string v0, "SessionAnalysis"

    const-string v1, "flush current session to stat_cache.json"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "{}"

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/baidu/wallet/base/stastics/p;->h:Lcom/baidu/wallet/base/stastics/o;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/stastics/o;->c()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/baidu/wallet/base/stastics/DataCore;->getInstance()Lcom/baidu/wallet/base/stastics/DataCore;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/baidu/wallet/base/stastics/DataCore;->putSessionWithFlush(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "SessionAnalysis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flushSession cacheString="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/wallet/base/stastics/p;Landroid/content/Context;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/wallet/base/stastics/p;->a(Landroid/content/Context;J)V

    return-void
.end method

.method private a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/wallet/base/stastics/p;->k:Z

    return-void
.end method

.method public static b()Lcom/baidu/wallet/base/stastics/p;
    .registers 1

    sget-object v0, Lcom/baidu/wallet/base/stastics/p;->i:Lcom/baidu/wallet/base/stastics/p;

    return-object v0
.end method

.method private e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/wallet/base/stastics/p;->k:Z

    return v0
.end method


# virtual methods
.method public a()I
    .registers 3

    iget v0, p0, Lcom/baidu/wallet/base/stastics/p;->j:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/16 v0, 0x7530

    iput v0, p0, Lcom/baidu/wallet/base/stastics/p;->j:I

    :cond_9
    iget v0, p0, Lcom/baidu/wallet/base/stastics/p;->j:I

    return v0
.end method

.method public a(I)V
    .registers 3

    mul-int/lit16 v0, p1, 0x3e8

    iput v0, p0, Lcom/baidu/wallet/base/stastics/p;->j:I

    return-void
.end method

.method public a(Landroid/content/Context;JLjava/lang/String;)V
    .registers 13

    invoke-virtual {p0, p4}, Lcom/baidu/wallet/base/stastics/p;->a(Ljava/lang/String;)V

    const-string v0, "SessionAnalysis"

    const-string v1, "AnalysisPageStart"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/baidu/wallet/base/stastics/p;->b(Ljava/lang/String;)Lcom/baidu/wallet/base/stastics/p$a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/baidu/wallet/base/stastics/p$a;->d:Z

    if-eqz v0, :cond_19

    const-string v0, "SessionAnalysis"

    const-string v1, "\u9057\u6f0fStatService.onPageEnd() || missing StatService.onPageEnd()"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    invoke-virtual {p0, p4}, Lcom/baidu/wallet/base/stastics/p;->b(Ljava/lang/String;)Lcom/baidu/wallet/base/stastics/p$a;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/baidu/wallet/base/stastics/p$a;->d:Z

    invoke-virtual {p0, p4}, Lcom/baidu/wallet/base/stastics/p;->b(Ljava/lang/String;)Lcom/baidu/wallet/base/stastics/p$a;

    move-result-object v0

    iput-wide p2, v0, Lcom/baidu/wallet/base/stastics/p$a;->e:J

    invoke-virtual {p0, p4}, Lcom/baidu/wallet/base/stastics/p;->b(Ljava/lang/String;)Lcom/baidu/wallet/base/stastics/p$a;

    move-result-object v0

    iput-wide p2, v0, Lcom/baidu/wallet/base/stastics/p$a;->b:J

    invoke-virtual {p0, p4}, Lcom/baidu/wallet/base/stastics/p;->b(Ljava/lang/String;)Lcom/baidu/wallet/base/stastics/p$a;

    move-result-object v0

    invoke-static {}, Lcom/baidu/wallet/base/stastics/BasicStoreTools;->getInstance()Lcom/baidu/wallet/base/stastics/BasicStoreTools;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/wallet/base/stastics/BasicStoreTools;->getExperimentID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/wallet/base/stastics/p$a;->g:Ljava/lang/String;

    invoke-virtual {p0, p4}, Lcom/baidu/wallet/base/stastics/p;->b(Ljava/lang/String;)Lcom/baidu/wallet/base/stastics/p$a;

    move-result-object v0

    invoke-static {}, Lcom/baidu/wallet/base/stastics/BasicStoreTools;->getInstance()Lcom/baidu/wallet/base/stastics/BasicStoreTools;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/wallet/base/stastics/BasicStoreTools;->getOrderID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/wallet/base/stastics/p$a;->h:Ljava/lang/String;

    invoke-virtual {p0, p4}, Lcom/baidu/wallet/base/stastics/p;->b(Ljava/lang/String;)Lcom/baidu/wallet/base/stastics/p$a;

    move-result-object v0

    invoke-static {}, Lcom/baidu/wallet/base/stastics/BasicStoreTools;->getInstance()Lcom/baidu/wallet/base/stastics/BasicStoreTools;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/wallet/base/stastics/BasicStoreTools;->getInternalID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/wallet/base/stastics/p$a;->i:Ljava/lang/String;

    invoke-virtual {p0, p4}, Lcom/baidu/wallet/base/stastics/p;->b(Ljava/lang/String;)Lcom/baidu/wallet/base/stastics/p$a;

    move-result-object v0

    iget-wide v2, p0, Lcom/baidu/wallet/base/stastics/p;->g:J

    iput-wide v2, v0, Lcom/baidu/wallet/base/stastics/p$a;->a:J

    invoke-static {}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getInstance()Lcom/baidu/wallet/core/beans/BeanRequestCache;

    move-result-object v0

    const-string v1, "key_pay_request"

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/beans/BeanRequestCache;->getBeanRequestFromCache(Ljava/lang/String;)Lcom/baidu/wallet/core/beans/BeanRequestBase;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/PayRequest;

    if-eqz v0, :cond_c3

    const-string v1, "pay_from_bind_card"

    invoke-virtual {v0}, Lcom/baidu/paysdk/datamodel/PayRequest;->getPayFrom()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    invoke-virtual {p0, p4}, Lcom/baidu/wallet/base/stastics/p;->b(Ljava/lang/String;)Lcom/baidu/wallet/base/stastics/p$a;

    move-result-object v0

    const-string v1, "bindCard"

    iput-object v1, v0, Lcom/baidu/wallet/base/stastics/p$a;->j:Ljava/lang/String;

    :goto_80
    invoke-virtual {p0, p4}, Lcom/baidu/wallet/base/stastics/p;->b(Ljava/lang/String;)Lcom/baidu/wallet/base/stastics/p$a;

    move-result-object v0

    iget-wide v0, v0, Lcom/baidu/wallet/base/stastics/p$a;->b:J

    iput-wide v0, p0, Lcom/baidu/wallet/base/stastics/p;->g:J

    invoke-direct {p0}, Lcom/baidu/wallet/base/stastics/p;->e()Z

    move-result v0

    if-eqz v0, :cond_cc

    const-string v0, "SessionAnalysis"

    const-string v1, "is_first_resume=true"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/wallet/base/stastics/p;->a(Z)V

    sget-object v0, Lcom/baidu/wallet/base/stastics/p;->d:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/wallet/base/stastics/q;

    invoke-direct {v1, p0}, Lcom/baidu/wallet/base/stastics/q;-><init>(Lcom/baidu/wallet/base/stastics/p;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_a3
    new-instance v0, Lcom/baidu/wallet/base/stastics/p$c;

    iget-wide v2, p0, Lcom/baidu/wallet/base/stastics/p;->e:J

    move-object v1, p0

    move-wide v4, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/baidu/wallet/base/stastics/p$c;-><init>(Lcom/baidu/wallet/base/stastics/p;JJLandroid/content/Context;)V

    sget-object v1, Lcom/baidu/wallet/base/stastics/p;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/wallet/base/stastics/p;->f:Ljava/lang/ref/WeakReference;

    return-void

    :cond_ba
    invoke-virtual {p0, p4}, Lcom/baidu/wallet/base/stastics/p;->b(Ljava/lang/String;)Lcom/baidu/wallet/base/stastics/p$a;

    move-result-object v0

    const-string v1, "cashier"

    iput-object v1, v0, Lcom/baidu/wallet/base/stastics/p$a;->j:Ljava/lang/String;

    goto :goto_80

    :cond_c3
    invoke-virtual {p0, p4}, Lcom/baidu/wallet/base/stastics/p;->b(Ljava/lang/String;)Lcom/baidu/wallet/base/stastics/p$a;

    move-result-object v0

    const-string v1, ""

    iput-object v1, v0, Lcom/baidu/wallet/base/stastics/p$a;->j:Ljava/lang/String;

    goto :goto_80

    :cond_cc
    const-string v0, "SessionAnalysis"

    const-string v1, " is_first_resume=false"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a3
.end method

.method a(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_a

    const-string v0, "SessionAnalysis"

    const-string v1, "page Object is null"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    new-instance v0, Lcom/baidu/wallet/base/stastics/p$a;

    invoke-direct {v0, p0, p1}, Lcom/baidu/wallet/base/stastics/p$a;-><init>(Lcom/baidu/wallet/base/stastics/p;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/wallet/base/stastics/p;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    sget-object v1, Lcom/baidu/wallet/base/stastics/p;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9
.end method

.method b(Ljava/lang/String;)Lcom/baidu/wallet/base/stastics/p$a;
    .registers 4

    if-nez p1, :cond_b

    const-string v0, "SessionAnalysis"

    const-string v1, "pageName is null"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Lcom/baidu/wallet/base/stastics/p;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0, p1}, Lcom/baidu/wallet/base/stastics/p;->a(Ljava/lang/String;)V

    :cond_16
    sget-object v0, Lcom/baidu/wallet/base/stastics/p;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/base/stastics/p$a;

    goto :goto_a
.end method

.method public b(Landroid/content/Context;JLjava/lang/String;)V
    .registers 9

    invoke-virtual {p0, p4}, Lcom/baidu/wallet/base/stastics/p;->b(Ljava/lang/String;)Lcom/baidu/wallet/base/stastics/p$a;

    move-result-object v0

    if-nez v0, :cond_25

    const-string v0, "SessionAnalysis"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Please note : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u6ca1\u6709\u4f18\u5148\u8c03\u7528\u6216\u8005\u9057\u6f0f\uff0c\u8bf7\u68c0\u67e5\u786e\u4fdd\u5728onPageEnd\u51fd\u6570\u4e4b\u524d\u8c03\u7528onPageStart\u51fd\u6570"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_24
    return-void

    :cond_25
    invoke-virtual {p0, p4}, Lcom/baidu/wallet/base/stastics/p;->b(Ljava/lang/String;)Lcom/baidu/wallet/base/stastics/p$a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/baidu/wallet/base/stastics/p$a;->d:Z

    if-nez v0, :cond_35

    const-string v0, "SessionAnalysis"

    const-string v1, "Please check (1)\u9057\u6f0fStatService.onPageStart() || missing StatService.onPageStart()"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    :cond_35
    invoke-virtual {p0, p4}, Lcom/baidu/wallet/base/stastics/p;->b(Ljava/lang/String;)Lcom/baidu/wallet/base/stastics/p$a;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/baidu/wallet/base/stastics/p$a;->d:Z

    invoke-virtual {p0, p4}, Lcom/baidu/wallet/base/stastics/p;->b(Ljava/lang/String;)Lcom/baidu/wallet/base/stastics/p$a;

    move-result-object v0

    iput-wide p2, v0, Lcom/baidu/wallet/base/stastics/p$a;->f:J

    new-instance v1, Lcom/baidu/wallet/base/stastics/p$b;

    iget-object v0, p0, Lcom/baidu/wallet/base/stastics/p;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, p0, p1, v0, p4}, Lcom/baidu/wallet/base/stastics/p$b;-><init>(Lcom/baidu/wallet/base/stastics/p;Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/wallet/base/stastics/p;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-wide p2, p0, Lcom/baidu/wallet/base/stastics/p;->e:J

    goto :goto_24
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/base/stastics/p;->h:Lcom/baidu/wallet/base/stastics/o;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/stastics/o;->b()V

    return-void
.end method

.method c(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_a

    const-string v0, "SessionAnalysis"

    const-string v1, "pageName is null"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    sget-object v0, Lcom/baidu/wallet/base/stastics/p;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/baidu/wallet/base/stastics/p;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9
.end method

.method public d()J
    .registers 3

    iget-wide v0, p0, Lcom/baidu/wallet/base/stastics/p;->g:J

    return-wide v0
.end method
