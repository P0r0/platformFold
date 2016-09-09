.class Lcom/gionee/gsp/util/GnOperatorLogInfoUtil$2;
.super Lcom/gionee/gsp/GnCallbackListener;
.source "GnOperatorLogInfoUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/util/GnOperatorLogInfoUtil;->sendLogImmediately(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/gionee/gsp/GnCallbackListener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$tempList:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/util/GnOperatorLogInfoUtil$2;->val$tempList:Ljava/util/List;

    .line 77
    invoke-direct {p0}, Lcom/gionee/gsp/GnCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic callback(ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/gionee/gsp/util/GnOperatorLogInfoUtil$2;->callback(ILjava/lang/String;)V

    return-void
.end method

.method public callback(ILjava/lang/String;)V
    .registers 6
    .param p1, "responseCode"    # I
    .param p2, "responseValue"    # Ljava/lang/String;

    .prologue
    .line 82
    sget v0, Lcom/gionee/gsp/result/GnResultCode;->COM_PLATFORM_SUCCESS:I

    if-eq p1, v0, :cond_14

    .line 83
    sget-object v1, Lcom/gionee/gsp/util/GnOperatorLogInfoUtil;->mGNLogInfoList:Ljava/util/List;

    monitor-enter v1

    .line 84
    :try_start_7
    sget-object v0, Lcom/gionee/gsp/util/GnOperatorLogInfoUtil;->mGNLogInfoList:Ljava/util/List;

    iget-object v2, p0, Lcom/gionee/gsp/util/GnOperatorLogInfoUtil$2;->val$tempList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 85
    iget-object v0, p0, Lcom/gionee/gsp/util/GnOperatorLogInfoUtil$2;->val$tempList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 83
    monitor-exit v1

    .line 89
    :cond_14
    return-void

    .line 83
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v0
.end method
