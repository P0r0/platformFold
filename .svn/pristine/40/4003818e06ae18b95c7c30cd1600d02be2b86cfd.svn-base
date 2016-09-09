.class Lcom/gionee/gsp/util/GnOperatorLogInfoUtil$1;
.super Ljava/lang/Thread;
.source "GnOperatorLogInfoUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/util/GnOperatorLogInfoUtil;->saveLog(Landroid/content/Context;Lcom/gionee/gsp/data/GnLogInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$mSLogInfo:Lcom/gionee/gsp/data/GnLogInfo;


# direct methods
.method constructor <init>(Lcom/gionee/gsp/data/GnLogInfo;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/util/GnOperatorLogInfoUtil$1;->val$mSLogInfo:Lcom/gionee/gsp/data/GnLogInfo;

    iput-object p2, p0, Lcom/gionee/gsp/util/GnOperatorLogInfoUtil$1;->val$context:Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 47
    sget-object v1, Lcom/gionee/gsp/util/GnOperatorLogInfoUtil;->mGNLogInfoList:Ljava/util/List;

    monitor-enter v1

    .line 48
    :try_start_3
    sget-object v0, Lcom/gionee/gsp/util/GnOperatorLogInfoUtil;->mGNLogInfoList:Ljava/util/List;

    iget-object v2, p0, Lcom/gionee/gsp/util/GnOperatorLogInfoUtil$1;->val$mSLogInfo:Lcom/gionee/gsp/data/GnLogInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/gionee/gsp/util/GnOperatorLogInfoUtil;->mGNLogInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_18

    .line 50
    iget-object v0, p0, Lcom/gionee/gsp/util/GnOperatorLogInfoUtil$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/gionee/gsp/util/GnOperatorLogInfoUtil;->sendLogImmediately(Landroid/content/Context;)V

    .line 47
    :cond_18
    monitor-exit v1

    .line 53
    return-void

    .line 47
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method
