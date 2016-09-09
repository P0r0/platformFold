.class public Lmobisocial/omlib/helper/SafeRunnable;
.super Ljava/lang/Object;
.source "SafeRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final TAG:Ljava/lang/String; = "Omlib-runnable"


# instance fields
.field final mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lmobisocial/omlib/helper/SafeRunnable;->mRunnable:Ljava/lang/Runnable;

    .line 17
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 22
    :try_start_0
    iget-object v1, p0, Lmobisocial/omlib/helper/SafeRunnable;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 26
    :goto_5
    return-void

    .line 23
    :catch_6
    move-exception v0

    .line 24
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Omlib-runnable"

    const-string v2, "Unhandled exception"

    invoke-static {v1, v2, v0}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method
