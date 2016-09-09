.class public abstract Lcom/gionee/gsp/GnCallbackListener;
.super Ljava/lang/Object;
.source "GnCallbackListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private destroy:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 4
    .local p0, "this":Lcom/gionee/gsp/GnCallbackListener;, "Lcom/gionee/gsp/GnCallbackListener<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gionee/gsp/GnCallbackListener;->destroy:Z

    .line 4
    return-void
.end method


# virtual methods
.method public abstract callback(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation
.end method

.method public destroy()V
    .registers 2

    .prologue
    .line 23
    .local p0, "this":Lcom/gionee/gsp/GnCallbackListener;, "Lcom/gionee/gsp/GnCallbackListener<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gionee/gsp/GnCallbackListener;->destroy:Z

    .line 24
    return-void
.end method

.method public isDestroy()Z
    .registers 2

    .prologue
    .line 27
    .local p0, "this":Lcom/gionee/gsp/GnCallbackListener;, "Lcom/gionee/gsp/GnCallbackListener<TT;>;"
    iget-boolean v0, p0, Lcom/gionee/gsp/GnCallbackListener;->destroy:Z

    return v0
.end method
