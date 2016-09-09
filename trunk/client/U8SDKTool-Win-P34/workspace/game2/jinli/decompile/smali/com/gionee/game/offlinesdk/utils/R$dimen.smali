.class public final Lcom/gionee/game/offlinesdk/utils/R$dimen;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gionee/game/offlinesdk/utils/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dimen"
.end annotation


# static fields
.field public static final dialog_button_bar_height:I

.field public static final dialog_button_border_size:I

.field public static final dialog_button_margin_bottom:I

.field public static final dialog_button_margin_left:I

.field public static final dialog_button_margin_right:I

.field public static final dialog_button_radius:I

.field public static final dialog_button_text_size:I

.field public static final dialog_content_height:I

.field public static final dialog_content_padding_bottom:I

.field public static final dialog_content_padding_left:I

.field public static final dialog_content_padding_right:I

.field public static final dialog_content_padding_top:I

.field public static final dialog_height:I

.field public static final dialog_message_text_size:I

.field public static final dialog_pay_text_margin_top:I

.field public static final dialog_title_cross_icon_margin_right:I

.field public static final dialog_title_cross_icon_size:I

.field public static final dialog_title_icon_margin_left:I

.field public static final dialog_title_icon_width:I

.field public static final dialog_title_text_margin_left:I

.field public static final dialog_title_text_size:I

.field public static final dialog_title_view_height:I

.field public static final dialog_width:I

.field public static final float_edge_height:I

.field public static final float_edge_width:I

.field public static final float_margin:I

.field public static final float_size:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/16 v5, 0x14

    const/16 v4, 0x11

    const/16 v3, 0xf

    const/16 v2, 0xa

    const/16 v1, 0xd

    .line 44
    const/16 v0, 0x11e

    # invokes: Lcom/gionee/game/offlinesdk/utils/R;->parsePxByDp(I)I
    invoke-static {v0}, Lcom/gionee/game/offlinesdk/utils/R;->access$000(I)I

    move-result v0

    sput v0, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_width:I

    .line 45
    const/16 v0, 0xba

    # invokes: Lcom/gionee/game/offlinesdk/utils/R;->parsePxByDp(I)I
    invoke-static {v0}, Lcom/gionee/game/offlinesdk/utils/R;->access$000(I)I

    move-result v0

    sput v0, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_height:I

    .line 46
    const/4 v0, 0x1

    # invokes: Lcom/gionee/game/offlinesdk/utils/R;->parsePxByDp(I)I
    invoke-static {v0}, Lcom/gionee/game/offlinesdk/utils/R;->access$000(I)I

    move-result v0

    sput v0, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_button_border_size:I

    .line 47
    const/16 v0, 0x2c

    # invokes: Lcom/gionee/game/offlinesdk/utils/R;->parsePxByDp(I)I
    invoke-static {v0}, Lcom/gionee/game/offlinesdk/utils/R;->access$000(I)I

    move-result v0

    sput v0, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_button_bar_height:I

    .line 48
    # invokes: Lcom/gionee/game/offlinesdk/utils/R;->parsePxByDp(I)I
    invoke-static {v4}, Lcom/gionee/game/offlinesdk/utils/R;->access$000(I)I

    move-result v0

    sput v0, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_button_text_size:I

    .line 49
    # invokes: Lcom/gionee/game/offlinesdk/utils/R;->parsePxByDp(I)I
    invoke-static {v3}, Lcom/gionee/game/offlinesdk/utils/R;->access$000(I)I

    move-result v0

    sput v0, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_message_text_size:I

    .line 50
    const/16 v0, 0x7d

    # invokes: Lcom/gionee/game/offlinesdk/utils/R;->parsePxByDp(I)I
    invoke-static {v0}, Lcom/gionee/game/offlinesdk/utils/R;->access$000(I)I

    move-result v0

    sput v0, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_content_height:I

    .line 51
    # invokes: Lcom/gionee/game/offlinesdk/utils/R;->parsePxByDp(I)I
    invoke-static {v1}, Lcom/gionee/game/offlinesdk/utils/R;->access$000(I)I

    move-result v0

    sput v0, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_content_padding_left:I

    .line 52
    # invokes: Lcom/gionee/game/offlinesdk/utils/R;->parsePxByDp(I)I
    invoke-static {v1}, Lcom/gionee/game/offlinesdk/utils/R;->access$000(I)I

    move-result v0

    sput v0, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_content_padding_right:I

    .line 53
    # invokes: Lcom/gionee/game/offlinesdk/utils/R;->parsePxByDp(I)I
    invoke-static {v3}, Lcom/gionee/game/offlinesdk/utils/R;->access$000(I)I

    move-result v0

    sput v0, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_content_padding_top:I

    .line 54
    # invokes: Lcom/gionee/game/offlinesdk/utils/R;->parsePxByDp(I)I
    invoke-static {v3}, Lcom/gionee/game/offlinesdk/utils/R;->access$000(I)I

    move-result v0

    sput v0, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_content_padding_bottom:I

    .line 55
    const/16 v0, 0x46

    # invokes: Lcom/gionee/game/offlinesdk/utils/R;->parsePxByDp(I)I
    invoke-static {v0}, Lcom/gionee/game/offlinesdk/utils/R;->access$000(I)I

    move-result v0

    sput v0, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_title_view_height:I

    .line 56
    const/16 v0, 0x2f

    # invokes: Lcom/gionee/game/offlinesdk/utils/R;->parsePxByDp(I)I
    invoke-static {v0}, Lcom/gionee/game/offlinesdk/utils/R;->access$000(I)I

    move-result v0

    sput v0, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_title_icon_width:I

    .line 57
    # invokes: Lcom/gionee/game/offlinesdk/utils/R;->parsePxByDp(I)I
    invoke-static {v4}, Lcom/gionee/game/offlinesdk/utils/R;->access$000(I)I

    move-result v0

    sput v0, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_title_text_size:I

    .line 58
    # invokes: Lcom/gionee/game/offlinesdk/utils/R;->parsePxByDp(I)I
    invoke-static {v1}, Lcom/gionee/game/offlinesdk/utils/R;->access$000(I)I

    move-result v0

    sput v0, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_title_icon_margin_left:I

    .line 59
    # invokes: Lcom/gionee/game/offlinesdk/utils/R;->parsePxByDp(I)I
    invoke-static {v1}, Lcom/gionee/game/offlinesdk/utils/R;->access$000(I)I

    move-result v0

    sput v0, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_title_text_margin_left:I

    .line 60
    const/16 v0, 0x16

    # invokes: Lcom/gionee/game/offlinesdk/utils/R;->parsePxByDp(I)I
    invoke-static {v0}, Lcom/gionee/game/offlinesdk/utils/R;->access$000(I)I

    move-result v0

    sput v0, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_title_cross_icon_size:I

    .line 61
    # invokes: Lcom/gionee/game/offlinesdk/utils/R;->parsePxByDp(I)I
    invoke-static {v2}, Lcom/gionee/game/offlinesdk/utils/R;->access$000(I)I

    move-result v0

    sput v0, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_title_cross_icon_margin_right:I

    .line 62
    # invokes: Lcom/gionee/game/offlinesdk/utils/R;->parsePxByDp(I)I
    invoke-static {v5}, Lcom/gionee/game/offlinesdk/utils/R;->access$000(I)I

    move-result v0

    sput v0, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_button_margin_left:I

    .line 63
    # invokes: Lcom/gionee/game/offlinesdk/utils/R;->parsePxByDp(I)I
    invoke-static {v5}, Lcom/gionee/game/offlinesdk/utils/R;->access$000(I)I

    move-result v0

    sput v0, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_button_margin_right:I

    .line 64
    # invokes: Lcom/gionee/game/offlinesdk/utils/R;->parsePxByDp(I)I
    invoke-static {v2}, Lcom/gionee/game/offlinesdk/utils/R;->access$000(I)I

    move-result v0

    sput v0, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_button_margin_bottom:I

    .line 65
    # invokes: Lcom/gionee/game/offlinesdk/utils/R;->parsePxByDp(I)I
    invoke-static {v2}, Lcom/gionee/game/offlinesdk/utils/R;->access$000(I)I

    move-result v0

    sput v0, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_button_radius:I

    .line 66
    const/4 v0, 0x4

    # invokes: Lcom/gionee/game/offlinesdk/utils/R;->parsePxByDp(I)I
    invoke-static {v0}, Lcom/gionee/game/offlinesdk/utils/R;->access$000(I)I

    move-result v0

    sput v0, Lcom/gionee/game/offlinesdk/utils/R$dimen;->dialog_pay_text_margin_top:I

    .line 67
    const/4 v0, 0x0

    # invokes: Lcom/gionee/game/offlinesdk/utils/R;->parsePxByDp(I)I
    invoke-static {v0}, Lcom/gionee/game/offlinesdk/utils/R;->access$000(I)I

    move-result v0

    sput v0, Lcom/gionee/game/offlinesdk/utils/R$dimen;->float_margin:I

    .line 68
    const/16 v0, 0x3e

    # invokes: Lcom/gionee/game/offlinesdk/utils/R;->parsePxByDp(I)I
    invoke-static {v0}, Lcom/gionee/game/offlinesdk/utils/R;->access$000(I)I

    move-result v0

    sput v0, Lcom/gionee/game/offlinesdk/utils/R$dimen;->float_size:I

    .line 69
    const/16 v0, 0x1b

    # invokes: Lcom/gionee/game/offlinesdk/utils/R;->parsePxByDp(I)I
    invoke-static {v0}, Lcom/gionee/game/offlinesdk/utils/R;->access$000(I)I

    move-result v0

    sput v0, Lcom/gionee/game/offlinesdk/utils/R$dimen;->float_edge_width:I

    .line 70
    const/16 v0, 0x4d

    # invokes: Lcom/gionee/game/offlinesdk/utils/R;->parsePxByDp(I)I
    invoke-static {v0}, Lcom/gionee/game/offlinesdk/utils/R;->access$000(I)I

    move-result v0

    sput v0, Lcom/gionee/game/offlinesdk/utils/R$dimen;->float_edge_height:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
