.class public Lcom/duoku/platform/download/DownloadConfiguration$DefaultDownloadComprator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/download/DownloadConfiguration$DownloadComprator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/download/DownloadConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultDownloadComprator"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isTheSame(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 715
    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    .line 723
    :cond_5
    :goto_5
    return v0

    .line 719
    :cond_6
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 721
    const/4 v0, 0x1

    goto :goto_5
.end method
