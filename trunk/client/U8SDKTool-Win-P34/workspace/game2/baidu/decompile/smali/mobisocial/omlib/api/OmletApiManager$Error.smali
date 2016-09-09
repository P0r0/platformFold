.class public enum Lmobisocial/omlib/api/OmletApiManager$Error;
.super Ljava/lang/Enum;
.source "OmletApiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/api/OmletApiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmobisocial/omlib/api/OmletApiManager$Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmobisocial/omlib/api/OmletApiManager$Error;

.field public static final enum ACCESS_CODE_INVALID:Lmobisocial/omlib/api/OmletApiManager$Error;

.field public static final enum BINDING_EXCEPTION:Lmobisocial/omlib/api/OmletApiManager$Error;

.field public static final enum UNKNOWN:Lmobisocial/omlib/api/OmletApiManager$Error;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    new-instance v0, Lmobisocial/omlib/api/OmletApiManager$Error$1;

    const-string v1, "ACCESS_CODE_INVALID"

    invoke-direct {v0, v1, v2}, Lmobisocial/omlib/api/OmletApiManager$Error$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlib/api/OmletApiManager$Error;->ACCESS_CODE_INVALID:Lmobisocial/omlib/api/OmletApiManager$Error;

    .line 89
    new-instance v0, Lmobisocial/omlib/api/OmletApiManager$Error$2;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lmobisocial/omlib/api/OmletApiManager$Error$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlib/api/OmletApiManager$Error;->UNKNOWN:Lmobisocial/omlib/api/OmletApiManager$Error;

    .line 91
    new-instance v0, Lmobisocial/omlib/api/OmletApiManager$Error$3;

    const-string v1, "BINDING_EXCEPTION"

    invoke-direct {v0, v1, v4}, Lmobisocial/omlib/api/OmletApiManager$Error$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlib/api/OmletApiManager$Error;->BINDING_EXCEPTION:Lmobisocial/omlib/api/OmletApiManager$Error;

    .line 85
    const/4 v0, 0x3

    new-array v0, v0, [Lmobisocial/omlib/api/OmletApiManager$Error;

    sget-object v1, Lmobisocial/omlib/api/OmletApiManager$Error;->ACCESS_CODE_INVALID:Lmobisocial/omlib/api/OmletApiManager$Error;

    aput-object v1, v0, v2

    sget-object v1, Lmobisocial/omlib/api/OmletApiManager$Error;->UNKNOWN:Lmobisocial/omlib/api/OmletApiManager$Error;

    aput-object v1, v0, v3

    sget-object v1, Lmobisocial/omlib/api/OmletApiManager$Error;->BINDING_EXCEPTION:Lmobisocial/omlib/api/OmletApiManager$Error;

    aput-object v1, v0, v4

    sput-object v0, Lmobisocial/omlib/api/OmletApiManager$Error;->$VALUES:[Lmobisocial/omlib/api/OmletApiManager$Error;

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
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILmobisocial/omlib/api/OmletApiManager$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lmobisocial/omlib/api/OmletApiManager$1;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lmobisocial/omlib/api/OmletApiManager$Error;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmobisocial/omlib/api/OmletApiManager$Error;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    const-class v0, Lmobisocial/omlib/api/OmletApiManager$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmobisocial/omlib/api/OmletApiManager$Error;

    return-object v0
.end method

.method public static values()[Lmobisocial/omlib/api/OmletApiManager$Error;
    .registers 1

    .prologue
    .line 85
    sget-object v0, Lmobisocial/omlib/api/OmletApiManager$Error;->$VALUES:[Lmobisocial/omlib/api/OmletApiManager$Error;

    invoke-virtual {v0}, [Lmobisocial/omlib/api/OmletApiManager$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmobisocial/omlib/api/OmletApiManager$Error;

    return-object v0
.end method
