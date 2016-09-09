.class Lcom/baidu/mtjstatsdk/ax;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Landroid/os/HandlerThread;

.field private static d:Landroid/os/Handler;

.field private static e:Lcom/baidu/mtjstatsdk/ax;


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/mtjstatsdk/bc;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 19
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EventHandleThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/mtjstatsdk/ax;->c:Landroid/os/HandlerThread;

    .line 26
    new-instance v0, Lcom/baidu/mtjstatsdk/ax;

    invoke-direct {v0}, Lcom/baidu/mtjstatsdk/ax;-><init>()V

    sput-object v0, Lcom/baidu/mtjstatsdk/ax;->e:Lcom/baidu/mtjstatsdk/ax;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/ax;->a:Ljava/util/HashMap;

    .line 157
    const-string v0, "$|$"

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/ax;->b:Ljava/lang/String;

    .line 30
    sget-object v0, Lcom/baidu/mtjstatsdk/ax;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 31
    sget-object v0, Lcom/baidu/mtjstatsdk/ax;->c:Landroid/os/HandlerThread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 32
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/baidu/mtjstatsdk/ax;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/baidu/mtjstatsdk/ax;->d:Landroid/os/Handler;

    .line 33
    return-void
.end method

.method public static a()Lcom/baidu/mtjstatsdk/ax;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/baidu/mtjstatsdk/ax;->e:Lcom/baidu/mtjstatsdk/ax;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "__sdk_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$|$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)V
    .registers 19

    .prologue
    .line 52
    sget-object v0, Lcom/baidu/mtjstatsdk/ax;->d:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mtjstatsdk/ay;

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p7

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-wide/from16 v8, p5

    invoke-direct/range {v1 .. v9}, Lcom/baidu/mtjstatsdk/ay;-><init>(Lcom/baidu/mtjstatsdk/ax;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .registers 17

    .prologue
    .line 70
    sget-object v8, Lcom/baidu/mtjstatsdk/ax;->d:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/mtjstatsdk/az;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p6

    move-wide v4, p4

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/baidu/mtjstatsdk/az;-><init>(Lcom/baidu/mtjstatsdk/ax;Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .registers 17

    .prologue
    .line 98
    sget-object v8, Lcom/baidu/mtjstatsdk/ax;->d:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/mtjstatsdk/ba;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p6

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/baidu/mtjstatsdk/ba;-><init>(Lcom/baidu/mtjstatsdk/ax;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    return-void
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .registers 17

    .prologue
    .line 135
    sget-object v8, Lcom/baidu/mtjstatsdk/ax;->d:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/mtjstatsdk/bb;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p6

    move-wide v4, p4

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/baidu/mtjstatsdk/bb;-><init>(Lcom/baidu/mtjstatsdk/ax;Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 151
    return-void
.end method
