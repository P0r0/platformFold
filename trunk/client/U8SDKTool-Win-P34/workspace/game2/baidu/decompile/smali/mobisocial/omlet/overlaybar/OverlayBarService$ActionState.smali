.class enum Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;
.super Ljava/lang/Enum;
.source "OverlayBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/OverlayBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400a
    name = "ActionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

.field public static final enum NOTHING:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

.field public static final enum SCREENSHOT:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

.field public static final enum VIDEO:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 115
    new-instance v0, Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState$1;

    const-string v1, "NOTHING"

    invoke-direct {v0, v1, v2}, Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;->NOTHING:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    .line 117
    new-instance v0, Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState$2;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v3}, Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;->VIDEO:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    .line 119
    new-instance v0, Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState$3;

    const-string v1, "SCREENSHOT"

    invoke-direct {v0, v1, v4}, Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;->SCREENSHOT:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    .line 113
    const/4 v0, 0x3

    new-array v0, v0, [Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    sget-object v1, Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;->NOTHING:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    aput-object v1, v0, v2

    sget-object v1, Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;->VIDEO:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    aput-object v1, v0, v3

    sget-object v1, Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;->SCREENSHOT:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    aput-object v1, v0, v4

    sput-object v0, Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;->$VALUES:[Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

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
    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILmobisocial/omlet/overlaybar/OverlayBarService$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lmobisocial/omlet/overlaybar/OverlayBarService$1;

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 113
    const-class v0, Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    return-object v0
.end method

.method public static values()[Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;
    .registers 1

    .prologue
    .line 113
    sget-object v0, Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;->$VALUES:[Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    invoke-virtual {v0}, [Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    return-object v0
.end method
