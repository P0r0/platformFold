.class public final Lcom/duoku/platform/download/DiffManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/download/DiffManager$DiffListener;
    }
.end annotation


# static fields
.field private static manager:Lcom/duoku/platform/download/DiffManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/duoku/platform/download/DiffManager;->manager:Lcom/duoku/platform/download/DiffManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/duoku/platform/download/DiffManager;
    .registers 2

    .prologue
    .line 20
    const-class v1, Lcom/duoku/platform/download/DiffManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/duoku/platform/download/DiffManager;->manager:Lcom/duoku/platform/download/DiffManager;

    if-nez v0, :cond_e

    .line 22
    new-instance v0, Lcom/duoku/platform/download/DiffManager;

    invoke-direct {v0}, Lcom/duoku/platform/download/DiffManager;-><init>()V

    sput-object v0, Lcom/duoku/platform/download/DiffManager;->manager:Lcom/duoku/platform/download/DiffManager;

    .line 24
    :cond_e
    sget-object v0, Lcom/duoku/platform/download/DiffManager;->manager:Lcom/duoku/platform/download/DiffManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 20
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private notifyResult(Lcom/duoku/platform/download/mode/DiffInfo;)V
    .registers 5

    .prologue
    .line 131
    iget-object v0, p1, Lcom/duoku/platform/download/mode/DiffInfo;->packageMode:Lcom/duoku/platform/download/PackageMode;

    .line 132
    iget-boolean v1, p1, Lcom/duoku/platform/download/mode/DiffInfo;->success:Z

    .line 133
    iget v2, p1, Lcom/duoku/platform/download/mode/DiffInfo;->failedReason:I

    .line 134
    if-eqz v0, :cond_b

    .line 136
    invoke-static {v0, v1, v2}, Lcom/duoku/platform/download/utils/PackageHelper;->notifyMergeResult(Lcom/duoku/platform/download/PackageMode;ZI)V

    .line 139
    :cond_b
    return-void
.end method


# virtual methods
.method public computeDiff(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 125
    new-instance v0, Lcom/duoku/platform/download/JarDeltaDiff;

    invoke-direct {v0}, Lcom/duoku/platform/download/JarDeltaDiff;-><init>()V

    .line 126
    invoke-virtual {v0, p1, p2}, Lcom/duoku/platform/download/JarDeltaDiff;->computeDiff(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    return-void
.end method

.method public postDiff(Landroid/content/Context;Lcom/duoku/platform/download/mode/DiffInfo;)V
    .registers 4

    .prologue
    .line 70
    iget-object v0, p2, Lcom/duoku/platform/download/mode/DiffInfo;->packageMode:Lcom/duoku/platform/download/PackageMode;

    iget-object v0, v0, Lcom/duoku/platform/download/PackageMode;->downloadDest:Ljava/lang/String;

    iput-object v0, p2, Lcom/duoku/platform/download/mode/DiffInfo;->patchPath:Ljava/lang/String;

    .line 71
    new-instance v0, Lcom/duoku/platform/download/JarDeltaDiff;

    invoke-direct {v0, p1, p2}, Lcom/duoku/platform/download/JarDeltaDiff;-><init>(Landroid/content/Context;Lcom/duoku/platform/download/mode/DiffInfo;)V

    .line 73
    invoke-virtual {v0}, Lcom/duoku/platform/download/JarDeltaDiff;->applyDiff()V

    .line 74
    iget-object v0, v0, Lcom/duoku/platform/download/JarDeltaDiff;->info:Lcom/duoku/platform/download/mode/DiffInfo;

    invoke-direct {p0, v0}, Lcom/duoku/platform/download/DiffManager;->notifyResult(Lcom/duoku/platform/download/mode/DiffInfo;)V

    .line 75
    return-void
.end method
