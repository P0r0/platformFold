.class final enum Lcom/gionee/gsp/service/account/sdk/utils/LogUtil$LogFileType;
.super Ljava/lang/Enum;
.source "LogUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gionee/gsp/service/account/sdk/utils/LogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LogFileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gionee/gsp/service/account/sdk/utils/LogUtil$LogFileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/gionee/gsp/service/account/sdk/utils/LogUtil$LogFileType;

.field public static final enum ErrorFile:Lcom/gionee/gsp/service/account/sdk/utils/LogUtil$LogFileType;

.field public static final enum Ordinary:Lcom/gionee/gsp/service/account/sdk/utils/LogUtil$LogFileType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 269
    new-instance v0, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil$LogFileType;

    const-string v1, "Ordinary"

    invoke-direct {v0, v1, v2}, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil$LogFileType;-><init>(Ljava/lang/String;I)V

    .line 272
    sput-object v0, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil$LogFileType;->Ordinary:Lcom/gionee/gsp/service/account/sdk/utils/LogUtil$LogFileType;

    .line 273
    new-instance v0, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil$LogFileType;

    const-string v1, "ErrorFile"

    invoke-direct {v0, v1, v3}, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil$LogFileType;-><init>(Ljava/lang/String;I)V

    .line 276
    sput-object v0, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil$LogFileType;->ErrorFile:Lcom/gionee/gsp/service/account/sdk/utils/LogUtil$LogFileType;

    .line 268
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/gionee/gsp/service/account/sdk/utils/LogUtil$LogFileType;

    sget-object v1, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil$LogFileType;->Ordinary:Lcom/gionee/gsp/service/account/sdk/utils/LogUtil$LogFileType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil$LogFileType;->ErrorFile:Lcom/gionee/gsp/service/account/sdk/utils/LogUtil$LogFileType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil$LogFileType;->ENUM$VALUES:[Lcom/gionee/gsp/service/account/sdk/utils/LogUtil$LogFileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 268
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gionee/gsp/service/account/sdk/utils/LogUtil$LogFileType;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil$LogFileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil$LogFileType;

    return-object v0
.end method

.method public static values()[Lcom/gionee/gsp/service/account/sdk/utils/LogUtil$LogFileType;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/gionee/gsp/service/account/sdk/utils/LogUtil$LogFileType;->ENUM$VALUES:[Lcom/gionee/gsp/service/account/sdk/utils/LogUtil$LogFileType;

    array-length v1, v0

    new-array v2, v1, [Lcom/gionee/gsp/service/account/sdk/utils/LogUtil$LogFileType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
