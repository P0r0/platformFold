.class enum Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;
.super Ljava/lang/Enum;
.source "ScreenshotDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400a
    name = "DetailsBaseType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;

.field public static final enum GAME:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;

.field public static final enum GAME_NOTI:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;

.field public static final enum PROFILE:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 144
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType$1;

    const-string v1, "PROFILE"

    invoke-direct {v0, v1, v2}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;->PROFILE:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;

    .line 150
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType$2;

    const-string v1, "GAME"

    invoke-direct {v0, v1, v3}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;->GAME:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;

    .line 157
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType$3;

    const-string v1, "GAME_NOTI"

    invoke-direct {v0, v1, v4}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;->GAME_NOTI:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;

    .line 137
    const/4 v0, 0x3

    new-array v0, v0, [Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;->PROFILE:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;

    aput-object v1, v0, v2

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;->GAME:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;

    aput-object v1, v0, v3

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;->GAME_NOTI:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;

    aput-object v1, v0, v4

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;->$VALUES:[Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;

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
    .line 137
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$1;

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 137
    const-class v0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;

    return-object v0
.end method

.method public static values()[Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;
    .registers 1

    .prologue
    .line 137
    sget-object v0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;->$VALUES:[Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;

    invoke-virtual {v0}, [Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$DetailsBaseType;

    return-object v0
.end method