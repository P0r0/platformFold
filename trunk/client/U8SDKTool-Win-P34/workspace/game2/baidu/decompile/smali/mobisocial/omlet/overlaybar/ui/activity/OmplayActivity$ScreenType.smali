.class public enum Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;
.super Ljava/lang/Enum;
.source "OmplayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "ScreenType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

.field public static final enum ADDFOLLOWUSER:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

.field public static final enum FOLLOWING:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

.field public static final enum LATEST:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

.field public static final enum NOTIFICATION:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

.field public static final enum POPULAR:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

.field public static final enum PROFILE:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

.field public static final enum SCREENSHOT_DETAILS:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

.field public static final enum SHARE_PEOPLE:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

.field public static final enum VIDEODETAILS:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

.field public static final enum VIDEOSTAGGED:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 69
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType$1;

    const-string v1, "LATEST"

    invoke-direct {v0, v1, v3}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;->LATEST:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

    .line 71
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType$2;

    const-string v1, "POPULAR"

    invoke-direct {v0, v1, v4}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;->POPULAR:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

    .line 73
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType$3;

    const-string v1, "FOLLOWING"

    invoke-direct {v0, v1, v5}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;->FOLLOWING:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

    .line 75
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType$4;

    const-string v1, "PROFILE"

    invoke-direct {v0, v1, v6}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;->PROFILE:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

    .line 77
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType$5;

    const-string v1, "NOTIFICATION"

    invoke-direct {v0, v1, v7}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;->NOTIFICATION:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

    .line 79
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType$6;

    const-string v1, "VIDEODETAILS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;->VIDEODETAILS:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

    .line 81
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType$7;

    const-string v1, "VIDEOSTAGGED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;->VIDEOSTAGGED:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

    .line 83
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType$8;

    const-string v1, "SCREENSHOT_DETAILS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;->SCREENSHOT_DETAILS:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

    .line 85
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType$9;

    const-string v1, "ADDFOLLOWUSER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType$9;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;->ADDFOLLOWUSER:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

    .line 87
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType$10;

    const-string v1, "SHARE_PEOPLE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType$10;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;->SHARE_PEOPLE:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

    .line 67
    const/16 v0, 0xa

    new-array v0, v0, [Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;->LATEST:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

    aput-object v1, v0, v3

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;->POPULAR:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

    aput-object v1, v0, v4

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;->FOLLOWING:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

    aput-object v1, v0, v5

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;->PROFILE:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

    aput-object v1, v0, v6

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;->NOTIFICATION:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;->VIDEODETAILS:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;->VIDEOSTAGGED:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;->SCREENSHOT_DETAILS:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;->ADDFOLLOWUSER:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;->SHARE_PEOPLE:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

    aput-object v2, v0, v1

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;->$VALUES:[Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

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
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$1;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 67
    const-class v0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

    return-object v0
.end method

.method public static values()[Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;
    .registers 1

    .prologue
    .line 67
    sget-object v0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;->$VALUES:[Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

    invoke-virtual {v0}, [Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

    return-object v0
.end method
