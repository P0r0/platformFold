.class public abstract Lcom/gionee/gsp/service/account/sdk/listener/IGnInstallListener;
.super Ljava/lang/Object;
.source "IGnInstallListener.java"

# interfaces
.implements Lcom/gionee/gsp/service/account/sdk/listener/GioneeAccountBaseListener;


# instance fields
.field private needToInstallList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gionee/gsp/data/GnInstanllPackageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/gionee/gsp/data/GnInstanllPackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 11
    .local p1, "needToInstallList":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnInstanllPackageInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/gionee/gsp/service/account/sdk/listener/IGnInstallListener;->needToInstallList:Ljava/util/List;

    .line 13
    return-void
.end method


# virtual methods
.method public getNeedToInstallList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/gionee/gsp/data/GnInstanllPackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/gionee/gsp/service/account/sdk/listener/IGnInstallListener;->needToInstallList:Ljava/util/List;

    return-object v0
.end method

.method public abstract onComplete()V
.end method
