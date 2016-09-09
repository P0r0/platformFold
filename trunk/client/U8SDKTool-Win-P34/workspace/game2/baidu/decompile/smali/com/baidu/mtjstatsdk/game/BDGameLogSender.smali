.class public Lcom/baidu/mtjstatsdk/game/BDGameLogSender;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/baidu/mtjstatsdk/game/BDGameLogSender;


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Lcom/baidu/mtjstatsdk/HeadObject;

.field private d:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    new-instance v0, Lcom/baidu/mtjstatsdk/game/BDGameLogSender;

    invoke-direct {v0}, Lcom/baidu/mtjstatsdk/game/BDGameLogSender;-><init>()V

    sput-object v0, Lcom/baidu/mtjstatsdk/game/BDGameLogSender;->a:Lcom/baidu/mtjstatsdk/game/BDGameLogSender;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/baidu/mtjstatsdk/game/BDGameLogSender;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 39
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/game/BDGameLogSender;->b:Landroid/os/Handler;

    .line 40
    return-void
.end method

.method public static synthetic a(Lcom/baidu/mtjstatsdk/game/BDGameLogSender;)Lcom/baidu/mtjstatsdk/HeadObject;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameLogSender;->c:Lcom/baidu/mtjstatsdk/HeadObject;

    return-object v0
.end method

.method public static synthetic a(Lcom/baidu/mtjstatsdk/game/BDGameLogSender;Lcom/baidu/mtjstatsdk/HeadObject;)Lcom/baidu/mtjstatsdk/HeadObject;
    .registers 2

    .prologue
    .line 25
    iput-object p1, p0, Lcom/baidu/mtjstatsdk/game/BDGameLogSender;->c:Lcom/baidu/mtjstatsdk/HeadObject;

    return-object p1
.end method

.method public static synthetic a(Lcom/baidu/mtjstatsdk/game/BDGameLogSender;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 25
    iput-object p1, p0, Lcom/baidu/mtjstatsdk/game/BDGameLogSender;->d:Lorg/json/JSONObject;

    return-object p1
.end method

.method public static synthetic b(Lcom/baidu/mtjstatsdk/game/BDGameLogSender;)Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameLogSender;->d:Lorg/json/JSONObject;

    return-object v0
.end method

.method public static instance()Lcom/baidu/mtjstatsdk/game/BDGameLogSender;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/baidu/mtjstatsdk/game/BDGameLogSender;->a:Lcom/baidu/mtjstatsdk/game/BDGameLogSender;

    return-object v0
.end method


# virtual methods
.method public sendLog(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 47
    if-eqz p1, :cond_8

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 69
    :cond_8
    :goto_8
    return-void

    .line 51
    :cond_9
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameLogSender;->b:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mtjstatsdk/cg;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/mtjstatsdk/cg;-><init>(Lcom/baidu/mtjstatsdk/game/BDGameLogSender;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8
.end method

.method public sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12

    .prologue
    .line 72
    if-eqz p1, :cond_e

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 129
    :cond_e
    :goto_e
    return-void

    .line 76
    :cond_f
    iget-object v6, p0, Lcom/baidu/mtjstatsdk/game/BDGameLogSender;->b:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/mtjstatsdk/ch;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mtjstatsdk/ch;-><init>(Lcom/baidu/mtjstatsdk/game/BDGameLogSender;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_e
.end method
