.class final enum Lcom/duoku/platform/download/utils/ApkUtil$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/download/utils/ApkUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/duoku/platform/download/utils/ApkUtil$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/duoku/platform/download/utils/ApkUtil$c;

.field private static final synthetic c:[Lcom/duoku/platform/download/utils/ApkUtil$c;


# instance fields
.field b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 472
    new-instance v0, Lcom/duoku/platform/download/utils/ApkUtil$c;

    const-string v1, "CHECK_SU_BINARY"

    .line 473
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 474
    const-string v3, "/system/xbin/which"

    aput-object v3, v2, v4

    const-string v3, "su"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v4, v2}, Lcom/duoku/platform/download/utils/ApkUtil$c;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 472
    sput-object v0, Lcom/duoku/platform/download/utils/ApkUtil$c;->a:Lcom/duoku/platform/download/utils/ApkUtil$c;

    .line 470
    new-array v0, v5, [Lcom/duoku/platform/download/utils/ApkUtil$c;

    sget-object v1, Lcom/duoku/platform/download/utils/ApkUtil$c;->a:Lcom/duoku/platform/download/utils/ApkUtil$c;

    aput-object v1, v0, v4

    sput-object v0, Lcom/duoku/platform/download/utils/ApkUtil$c;->c:[Lcom/duoku/platform/download/utils/ApkUtil$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 478
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 480
    iput-object p3, p0, Lcom/duoku/platform/download/utils/ApkUtil$c;->b:[Ljava/lang/String;

    .line 481
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/duoku/platform/download/utils/ApkUtil$c;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/duoku/platform/download/utils/ApkUtil$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/utils/ApkUtil$c;

    return-object v0
.end method

.method public static values()[Lcom/duoku/platform/download/utils/ApkUtil$c;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/duoku/platform/download/utils/ApkUtil$c;->c:[Lcom/duoku/platform/download/utils/ApkUtil$c;

    array-length v1, v0

    new-array v2, v1, [Lcom/duoku/platform/download/utils/ApkUtil$c;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
