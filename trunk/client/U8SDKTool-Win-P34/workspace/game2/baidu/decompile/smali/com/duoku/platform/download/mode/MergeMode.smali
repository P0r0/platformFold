.class public Lcom/duoku/platform/download/mode/MergeMode;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public downloadId:J

.field public downloadUrl:Ljava/lang/String;

.field public failedCount:I

.field public failedReason:I

.field public gameId:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public saveDest:Ljava/lang/String;

.field public status:I

.field public version:Ljava/lang/String;

.field public versionInt:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .registers 13

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-wide p1, p0, Lcom/duoku/platform/download/mode/MergeMode;->downloadId:J

    .line 49
    iput-object p3, p0, Lcom/duoku/platform/download/mode/MergeMode;->downloadUrl:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lcom/duoku/platform/download/mode/MergeMode;->saveDest:Ljava/lang/String;

    .line 51
    iput p5, p0, Lcom/duoku/platform/download/mode/MergeMode;->versionInt:I

    .line 52
    iput-object p6, p0, Lcom/duoku/platform/download/mode/MergeMode;->version:Ljava/lang/String;

    .line 53
    iput-object p7, p0, Lcom/duoku/platform/download/mode/MergeMode;->gameId:Ljava/lang/String;

    .line 54
    iput-object p8, p0, Lcom/duoku/platform/download/mode/MergeMode;->packageName:Ljava/lang/String;

    .line 55
    iput p9, p0, Lcom/duoku/platform/download/mode/MergeMode;->failedCount:I

    .line 56
    iput p10, p0, Lcom/duoku/platform/download/mode/MergeMode;->failedReason:I

    .line 57
    iput p11, p0, Lcom/duoku/platform/download/mode/MergeMode;->status:I

    .line 58
    return-void
.end method
