.class public enum Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$Screen;
.super Ljava/lang/Enum;
.source "ScreenshotEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "Screen"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$Screen;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$Screen;

.field public static final enum Preview:Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$Screen;

.field public static final enum Upload:Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$Screen;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$Screen$1;

    const-string v1, "Preview"

    invoke-direct {v0, v1, v2}, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$Screen$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$Screen;->Preview:Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$Screen;

    .line 46
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$Screen$2;

    const-string v1, "Upload"

    invoke-direct {v0, v1, v3}, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$Screen$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$Screen;->Upload:Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$Screen;

    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$Screen;

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$Screen;->Preview:Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$Screen;

    aput-object v1, v0, v2

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$Screen;->Upload:Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$Screen;

    aput-object v1, v0, v3

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$Screen;->$VALUES:[Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$Screen;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$1;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$Screen;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$Screen;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    const-class v0, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$Screen;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$Screen;

    return-object v0
.end method

.method public static values()[Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$Screen;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$Screen;->$VALUES:[Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$Screen;

    invoke-virtual {v0}, [Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$Screen;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$Screen;

    return-object v0
.end method
