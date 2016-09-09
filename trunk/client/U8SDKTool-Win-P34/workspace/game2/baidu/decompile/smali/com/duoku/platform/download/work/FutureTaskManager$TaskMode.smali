.class public Lcom/duoku/platform/download/work/FutureTaskManager$TaskMode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/download/work/FutureTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskMode"
.end annotation


# instance fields
.field private taskExtra:Ljava/lang/String;

.field private taskId:J

.field private taskTag:I


# direct methods
.method public constructor <init>(JILjava/lang/String;)V
    .registers 6

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide p1, p0, Lcom/duoku/platform/download/work/FutureTaskManager$TaskMode;->taskId:J

    .line 45
    iput p3, p0, Lcom/duoku/platform/download/work/FutureTaskManager$TaskMode;->taskTag:I

    .line 46
    iput-object p4, p0, Lcom/duoku/platform/download/work/FutureTaskManager$TaskMode;->taskExtra:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 92
    if-ne p0, p1, :cond_5

    .line 108
    :cond_4
    :goto_4
    return v0

    .line 94
    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    .line 95
    goto :goto_4

    .line 96
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    .line 97
    goto :goto_4

    .line 98
    :cond_15
    check-cast p1, Lcom/duoku/platform/download/work/FutureTaskManager$TaskMode;

    .line 99
    iget-object v2, p0, Lcom/duoku/platform/download/work/FutureTaskManager$TaskMode;->taskExtra:Ljava/lang/String;

    if-nez v2, :cond_21

    .line 101
    iget-object v2, p1, Lcom/duoku/platform/download/work/FutureTaskManager$TaskMode;->taskExtra:Ljava/lang/String;

    if-eqz v2, :cond_2d

    move v0, v1

    .line 102
    goto :goto_4

    .line 104
    :cond_21
    iget-object v2, p0, Lcom/duoku/platform/download/work/FutureTaskManager$TaskMode;->taskExtra:Ljava/lang/String;

    iget-object v3, p1, Lcom/duoku/platform/download/work/FutureTaskManager$TaskMode;->taskExtra:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    move v0, v1

    .line 105
    goto :goto_4

    .line 106
    :cond_2d
    iget v2, p0, Lcom/duoku/platform/download/work/FutureTaskManager$TaskMode;->taskTag:I

    iget v3, p1, Lcom/duoku/platform/download/work/FutureTaskManager$TaskMode;->taskTag:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 107
    goto :goto_4
.end method

.method public getTaskExtra()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/duoku/platform/download/work/FutureTaskManager$TaskMode;->taskExtra:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskId()J
    .registers 3

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/duoku/platform/download/work/FutureTaskManager$TaskMode;->taskId:J

    return-wide v0
.end method

.method public getTaskTag()I
    .registers 2

    .prologue
    .line 61
    iget v0, p0, Lcom/duoku/platform/download/work/FutureTaskManager$TaskMode;->taskTag:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 82
    .line 84
    iget-object v0, p0, Lcom/duoku/platform/download/work/FutureTaskManager$TaskMode;->taskExtra:Ljava/lang/String;

    if-nez v0, :cond_d

    const/4 v0, 0x0

    :goto_5
    add-int/lit8 v0, v0, 0x1f

    .line 85
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/duoku/platform/download/work/FutureTaskManager$TaskMode;->taskTag:I

    add-int/2addr v0, v1

    .line 86
    return v0

    .line 84
    :cond_d
    iget-object v0, p0, Lcom/duoku/platform/download/work/FutureTaskManager$TaskMode;->taskExtra:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_5
.end method

.method public setTaskExtra(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lcom/duoku/platform/download/work/FutureTaskManager$TaskMode;->taskExtra:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setTaskId(J)V
    .registers 4

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/duoku/platform/download/work/FutureTaskManager$TaskMode;->taskId:J

    .line 57
    return-void
.end method

.method public setTaskTag(I)V
    .registers 2

    .prologue
    .line 66
    iput p1, p0, Lcom/duoku/platform/download/work/FutureTaskManager$TaskMode;->taskTag:I

    .line 67
    return-void
.end method
