.class public final Lcom/squareup/okhttp/internal/Version;
.super Ljava/lang/Object;
.source "Version.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static userAgent()Ljava/lang/String;
    .registers 1

    .prologue
    .line 20
    const-string v0, "okhttp/2.6.0-SNAPSHOT"

    return-object v0
.end method
