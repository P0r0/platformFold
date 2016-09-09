.class public enum Lmobisocial/omlib/client/LongdanClient$ConnectionType;
.super Ljava/lang/Enum;
.source "LongdanClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/client/LongdanClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "ConnectionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmobisocial/omlib/client/LongdanClient$ConnectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmobisocial/omlib/client/LongdanClient$ConnectionType;

.field public static final enum Idp:Lmobisocial/omlib/client/LongdanClient$ConnectionType;

.field public static final enum Msg:Lmobisocial/omlib/client/LongdanClient$ConnectionType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 137
    new-instance v0, Lmobisocial/omlib/client/LongdanClient$ConnectionType$1;

    const-string v1, "Idp"

    invoke-direct {v0, v1, v2}, Lmobisocial/omlib/client/LongdanClient$ConnectionType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlib/client/LongdanClient$ConnectionType;->Idp:Lmobisocial/omlib/client/LongdanClient$ConnectionType;

    .line 139
    new-instance v0, Lmobisocial/omlib/client/LongdanClient$ConnectionType$2;

    const-string v1, "Msg"

    invoke-direct {v0, v1, v3}, Lmobisocial/omlib/client/LongdanClient$ConnectionType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlib/client/LongdanClient$ConnectionType;->Msg:Lmobisocial/omlib/client/LongdanClient$ConnectionType;

    .line 135
    const/4 v0, 0x2

    new-array v0, v0, [Lmobisocial/omlib/client/LongdanClient$ConnectionType;

    sget-object v1, Lmobisocial/omlib/client/LongdanClient$ConnectionType;->Idp:Lmobisocial/omlib/client/LongdanClient$ConnectionType;

    aput-object v1, v0, v2

    sget-object v1, Lmobisocial/omlib/client/LongdanClient$ConnectionType;->Msg:Lmobisocial/omlib/client/LongdanClient$ConnectionType;

    aput-object v1, v0, v3

    sput-object v0, Lmobisocial/omlib/client/LongdanClient$ConnectionType;->$VALUES:[Lmobisocial/omlib/client/LongdanClient$ConnectionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILmobisocial/omlib/client/LongdanClient$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lmobisocial/omlib/client/LongdanClient$1;

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Lmobisocial/omlib/client/LongdanClient$ConnectionType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmobisocial/omlib/client/LongdanClient$ConnectionType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 135
    const-class v0, Lmobisocial/omlib/client/LongdanClient$ConnectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/client/LongdanClient$ConnectionType;

    return-object v0
.end method

.method public static values()[Lmobisocial/omlib/client/LongdanClient$ConnectionType;
    .registers 1

    .prologue
    .line 135
    sget-object v0, Lmobisocial/omlib/client/LongdanClient$ConnectionType;->$VALUES:[Lmobisocial/omlib/client/LongdanClient$ConnectionType;

    invoke-virtual {v0}, [Lmobisocial/omlib/client/LongdanClient$ConnectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmobisocial/omlib/client/LongdanClient$ConnectionType;

    return-object v0
.end method
