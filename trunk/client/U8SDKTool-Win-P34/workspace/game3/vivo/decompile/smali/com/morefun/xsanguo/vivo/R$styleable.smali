.class public final Lcom/morefun/xsanguo/vivo/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/morefun/xsanguo/vivo/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final VivoTheme:[I

.field public static final VivoTheme_bbkMarkupButtonStyle:I = 0x8

.field public static final VivoTheme_bbkTabwigetSelectBackground:I = 0x6

.field public static final VivoTheme_bbkTabwigetUnSelectedBackground:I = 0x7

.field public static final VivoTheme_bbkTitleButtonStyle:I = 0x5

.field public static final VivoTheme_bbkWindowTitleStyle:I = 0x4

.field public static final VivoTheme_bbkstylebackground:I = 0x2

.field public static final VivoTheme_bbkwindowTitleBackgroundStyle:I = 0x3

.field public static final VivoTheme_viewCallbackFlag:I = 0x1

.field public static final VivoTheme_windowStatusbarBackground:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 2274
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/morefun/xsanguo/vivo/R$styleable;->VivoTheme:[I

    return-void

    :array_a
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f010006
        0x7f010007
        0x7f010008
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
