.class Lcom/squareup/leakcanary/GcTrigger$1;
.super Ljava/lang/Object;
.source "GcTrigger.java"

# interfaces
.implements Lcom/squareup/leakcanary/GcTrigger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/leakcanary/GcTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method

.method private enqueueReferences()V
    .registers 5

    .prologue
    .line 19
    const-wide/16 v2, 0x64

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_6

    .line 24
    return-void

    .line 21
    :catch_6
    move-exception v0

    .line 22
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method


# virtual methods
.method public runGc()V
    .registers 2

    .prologue
    .line 12
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 13
    invoke-direct {p0}, Lcom/squareup/leakcanary/GcTrigger$1;->enqueueReferences()V

    .line 14
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 15
    return-void
.end method
