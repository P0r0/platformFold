.class public abstract Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;
.super Ljava/lang/Object;
.source "IGnDownloadListener.java"

# interfaces
.implements Lcom/gionee/gsp/service/account/sdk/listener/GioneeAccountBaseListener;


# instance fields
.field private cancel:Z

.field private currentVersionInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "currentVersionInfo"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;->currentVersionInfo:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;->cancel:Z

    .line 29
    return-void
.end method

.method public getCurrentVersionInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;->currentVersionInfo:Ljava/lang/String;

    return-object v0
.end method

.method public isCancel()Z
    .registers 2

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;->cancel:Z

    return v0
.end method

.method public abstract onComplete(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/gionee/gsp/data/GnInstanllPackageInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onProgressUpdate(I)V
.end method
