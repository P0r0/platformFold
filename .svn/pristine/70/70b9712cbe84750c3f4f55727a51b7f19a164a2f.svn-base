.class Lcom/duoku/platform/floatview/DKFloatWindow$d;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/floatview/DKFloatWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/floatview/DKFloatWindow;


# direct methods
.method private constructor <init>(Lcom/duoku/platform/floatview/DKFloatWindow;)V
    .registers 2

    .prologue
    .line 1248
    iput-object p1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$d;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/duoku/platform/floatview/DKFloatWindow;Lcom/duoku/platform/floatview/DKFloatWindow$d;)V
    .registers 3

    .prologue
    .line 1248
    invoke-direct {p0, p1}, Lcom/duoku/platform/floatview/DKFloatWindow$d;-><init>(Lcom/duoku/platform/floatview/DKFloatWindow;)V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/floatview/DKFloatWindow$d;)Lcom/duoku/platform/floatview/DKFloatWindow;
    .registers 2

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$d;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .prologue
    .line 1254
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1255
    const-string v1, "com.duoku.ACTION_MESSAGE_REFRESH"

    if-eq v1, v0, :cond_10

    const-string v1, "com.duoku.ACTION_MESSAGE_REFRESH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1257
    :cond_10
    const-string v0, "unreadCount"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1258
    if-ltz v0, :cond_1e

    .line 1260
    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWindow$d;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-virtual {v1, v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->a(I)V

    .line 1283
    :cond_1e
    :goto_1e
    return-void

    .line 1263
    :cond_1f
    const-string v1, "com.duoku.ACTION_GIFT_REFRESH"

    if-eq v1, v0, :cond_2b

    const-string v1, "com.duoku.ACTION_GIFT_REFRESH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1265
    :cond_2b
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$d;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-virtual {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->a()V

    goto :goto_1e

    .line 1267
    :cond_31
    const-string v1, "com.duoku.ACTION_VISITOR_UPDATE"

    if-eq v1, v0, :cond_3d

    const-string v1, "com.duoku.ACTION_VISITOR_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 1269
    :cond_3d
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$d;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-virtual {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->d()V

    goto :goto_1e

    .line 1271
    :cond_43
    const-string v1, "com.duoku.ACTION_H5_CLOSE"

    if-eq v1, v0, :cond_4f

    const-string v1, "com.duoku.ACTION_H5_CLOSE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1273
    :cond_4f
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWindow$d;->a:Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->a(Lcom/duoku/platform/floatview/DKFloatWindow;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/duoku/platform/floatview/DKFloatWindow$d$1;

    invoke-direct {v1, p0}, Lcom/duoku/platform/floatview/DKFloatWindow$d$1;-><init>(Lcom/duoku/platform/floatview/DKFloatWindow$d;)V

    .line 1280
    const-wide/16 v2, 0x190

    .line 1273
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1e
.end method
