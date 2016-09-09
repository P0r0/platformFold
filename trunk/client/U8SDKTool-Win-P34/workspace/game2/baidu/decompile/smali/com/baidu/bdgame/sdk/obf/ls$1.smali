.class final Lcom/baidu/bdgame/sdk/obf/ls$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ls;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/ls;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ls;Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 73
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ls$1;->b:Lcom/baidu/bdgame/sdk/obf/ls;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/ls$1;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    const/16 v1, 0x36

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ci;->b(I)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ls$1;->b:Lcom/baidu/bdgame/sdk/obf/ls;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ls$1;->a:Ljava/lang/Throwable;

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/ls;->a(Lcom/baidu/bdgame/sdk/obf/ls;Ljava/lang/Throwable;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ci;->a(Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kn;->d()Lcom/baidu/bdgame/sdk/obf/kn;

    move-result-object v1

    .line 80
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ls$1;->b:Lcom/baidu/bdgame/sdk/obf/ls;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/ls;->a(Lcom/baidu/bdgame/sdk/obf/ls;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/baidu/bdgame/sdk/obf/cj;->a(Landroid/content/Context;ILjava/util/List;)Lcom/baidu/bdgame/sdk/obf/cj;

    move-result-object v0

    .line 81
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kn;->b(Lcom/baidu/bdgame/sdk/obf/kz;Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 83
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ls$1;->b:Lcom/baidu/bdgame/sdk/obf/ls;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ls;->b(Lcom/baidu/bdgame/sdk/obf/ls;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 84
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ls$1;->b:Lcom/baidu/bdgame/sdk/obf/ls;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ls;->b(Lcom/baidu/bdgame/sdk/obf/ls;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ls$1;->a:Ljava/lang/Throwable;

    invoke-interface {v0, p0, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 89
    :goto_40
    return-void

    .line 86
    :cond_41
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 87
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_40
.end method
