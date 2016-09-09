.class Lcom/gionee/gsp/util/GnCommonUtil$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GnCommonUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gionee/gsp/util/GnCommonUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyBroadcastReceiver"
.end annotation


# instance fields
.field private mTempNeedToInstallList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gionee/gsp/data/GnInstanllPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mThread:Ljava/lang/Thread;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1797
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gionee/gsp/util/GnCommonUtil$MyBroadcastReceiver;)V
    .registers 2

    .prologue
    .line 1797
    invoke-direct {p0}, Lcom/gionee/gsp/util/GnCommonUtil$MyBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public addParamter(Ljava/util/List;Ljava/lang/Thread;)V
    .registers 3
    .param p2, "thread"    # Ljava/lang/Thread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/gionee/gsp/data/GnInstanllPackageInfo;",
            ">;",
            "Ljava/lang/Thread;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1803
    .local p1, "tempNeedToInstallList":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnInstanllPackageInfo;>;"
    iput-object p1, p0, Lcom/gionee/gsp/util/GnCommonUtil$MyBroadcastReceiver;->mTempNeedToInstallList:Ljava/util/List;

    .line 1804
    iput-object p2, p0, Lcom/gionee/gsp/util/GnCommonUtil$MyBroadcastReceiver;->mThread:Ljava/lang/Thread;

    .line 1805
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1810
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1811
    .local v2, "packageName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "---------------\u6536\u5230\u65b0\u88c5\u5e94\u7528\u5305\u540d\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gionee/gsp/util/GnLogUtil;->i(Ljava/lang/String;)V

    .line 1813
    iget-object v3, p0, Lcom/gionee/gsp/util/GnCommonUtil$MyBroadcastReceiver;->mTempNeedToInstallList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_36

    .line 1821
    :goto_28
    iget-object v3, p0, Lcom/gionee/gsp/util/GnCommonUtil$MyBroadcastReceiver;->mTempNeedToInstallList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_35

    .line 1822
    iget-object v3, p0, Lcom/gionee/gsp/util/GnCommonUtil$MyBroadcastReceiver;->mThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 1828
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_35
    :goto_35
    return-void

    .line 1813
    .restart local v2    # "packageName":Ljava/lang/String;
    :cond_36
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gionee/gsp/data/GnInstanllPackageInfo;

    .line 1814
    .local v1, "gnInstanllPackageInfo":Lcom/gionee/gsp/data/GnInstanllPackageInfo;
    iget-object v4, v1, Lcom/gionee/gsp/data/GnInstanllPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1815
    iget-object v3, p0, Lcom/gionee/gsp/util/GnCommonUtil$MyBroadcastReceiver;->mTempNeedToInstallList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_49} :catch_4a

    goto :goto_28

    .line 1824
    .end local v1    # "gnInstanllPackageInfo":Lcom/gionee/gsp/data/GnInstanllPackageInfo;
    .end local v2    # "packageName":Ljava/lang/String;
    :catch_4a
    move-exception v0

    .line 1825
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/gionee/gsp/util/GnCommonUtil;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_35
.end method
