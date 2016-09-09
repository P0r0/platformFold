.class public Lnet/ypresto/qtfaststart/QtFastStart$QtFastStartException;
.super Ljava/lang/Exception;
.source "QtFastStart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/ypresto/qtfaststart/QtFastStart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QtFastStartException"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 328
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lnet/ypresto/qtfaststart/QtFastStart$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lnet/ypresto/qtfaststart/QtFastStart$1;

    .prologue
    .line 325
    invoke-direct {p0, p1}, Lnet/ypresto/qtfaststart/QtFastStart$QtFastStartException;-><init>(Ljava/lang/String;)V

    return-void
.end method
