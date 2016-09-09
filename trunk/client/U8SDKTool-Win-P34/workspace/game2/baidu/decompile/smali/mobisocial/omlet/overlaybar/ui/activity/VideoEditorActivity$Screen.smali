.class public enum Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;
.super Ljava/lang/Enum;
.source "VideoEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "Screen"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;

.field public static final enum Edit:Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;

.field public static final enum Preview:Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;

.field public static final enum Signin:Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;

.field public static final enum Upload:Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen$1;

    const-string v1, "Preview"

    invoke-direct {v0, v1, v2}, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;->Preview:Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;

    .line 58
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen$2;

    const-string v1, "Edit"

    invoke-direct {v0, v1, v3}, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;->Edit:Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;

    .line 60
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen$3;

    const-string v1, "Signin"

    invoke-direct {v0, v1, v4}, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;->Signin:Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;

    .line 62
    new-instance v0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen$4;

    const-string v1, "Upload"

    invoke-direct {v0, v1, v5}, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;->Upload:Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;->Preview:Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;

    aput-object v1, v0, v2

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;->Edit:Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;

    aput-object v1, v0, v3

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;->Signin:Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;

    aput-object v1, v0, v4

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;->Upload:Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;

    aput-object v1, v0, v5

    sput-object v0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;->$VALUES:[Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;

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
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$1;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    const-class v0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;

    return-object v0
.end method

.method public static values()[Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;->$VALUES:[Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;

    invoke-virtual {v0}, [Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;

    return-object v0
.end method
