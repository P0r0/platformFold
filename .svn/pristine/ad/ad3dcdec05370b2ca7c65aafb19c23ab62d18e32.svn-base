.class public Lcom/vivo/upgrade/utils/AsyncTaskSetting;
.super Ljava/lang/Object;
.source "AsyncTaskSetting.java"


# static fields
.field private static final CORE_POOL_SIZE:I = 0x5

.field private static final KEEP_ALIVE:I = 0x1

.field private static final MAXIMUM_POOL_SIZE:I = 0x80

.field private static final TASK_CORE_POOL_SIZE:I = 0x8

.field public static final TASK_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final UI_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/16 v9, 0x8

    const-wide/16 v4, 0x1

    const/16 v3, 0x80

    .line 15
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 16
    const/16 v1, 0xa

    .line 15
    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/vivo/upgrade/utils/AsyncTaskSetting;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 18
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 19
    const/4 v2, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 20
    sget-object v7, Lcom/vivo/upgrade/utils/AsyncTaskSetting;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    .line 18
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/vivo/upgrade/utils/AsyncTaskSetting;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 22
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 23
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 24
    sget-object v7, Lcom/vivo/upgrade/utils/AsyncTaskSetting;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    move v2, v9

    .line 22
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/vivo/upgrade/utils/AsyncTaskSetting;->TASK_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 26
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 27
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 28
    sget-object v7, Lcom/vivo/upgrade/utils/AsyncTaskSetting;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    move v2, v9

    .line 26
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/vivo/upgrade/utils/AsyncTaskSetting;->UI_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
