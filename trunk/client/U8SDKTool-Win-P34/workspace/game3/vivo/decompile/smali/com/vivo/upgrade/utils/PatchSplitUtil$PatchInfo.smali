.class public Lcom/vivo/upgrade/utils/PatchSplitUtil$PatchInfo;
.super Ljava/lang/Object;
.source "PatchSplitUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/upgrade/utils/PatchSplitUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PatchInfo"
.end annotation


# instance fields
.field public patchMd5:Ljava/lang/String;

.field public patchSize:J

.field public patchVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
