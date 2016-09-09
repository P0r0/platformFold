.class public final Lcom/squareup/leakcanary/AndroidDebuggerControl;
.super Ljava/lang/Object;
.source "AndroidDebuggerControl.java"

# interfaces
.implements Lcom/squareup/leakcanary/DebuggerControl;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDebuggerAttached()Z
    .registers 2

    .prologue
    .line 13
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    return v0
.end method
