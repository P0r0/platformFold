.class Lcom/duoku/platform/ui/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/ui/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/duoku/platform/download/mode/DownloadAppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/ui/b;


# direct methods
.method constructor <init>(Lcom/duoku/platform/ui/b;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/ui/b$3;->a:Lcom/duoku/platform/ui/b;

    .line 1728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/duoku/platform/download/mode/DownloadAppInfo;Lcom/duoku/platform/download/mode/DownloadAppInfo;)I
    .registers 8

    .prologue
    .line 1734
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadDate()J

    move-result-wide v0

    .line 1735
    invoke-virtual {p2}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadDate()J

    move-result-wide v2

    .line 1737
    cmp-long v4, v0, v2

    if-gez v4, :cond_e

    .line 1739
    const/4 v0, -0x1

    .line 1745
    :goto_d
    return v0

    .line 1741
    :cond_e
    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    .line 1743
    const/4 v0, 0x1

    goto :goto_d

    .line 1745
    :cond_14
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 1
    check-cast p1, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    check-cast p2, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    invoke-virtual {p0, p1, p2}, Lcom/duoku/platform/ui/b$3;->a(Lcom/duoku/platform/download/mode/DownloadAppInfo;Lcom/duoku/platform/download/mode/DownloadAppInfo;)I

    move-result v0

    return v0
.end method
