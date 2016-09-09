.class public Lcom/vivo/assist/util/TweenerInterpolator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static synthetic b:[I


# instance fields
.field private a:Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;


# direct methods
.method public constructor <init>(Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/assist/util/TweenerInterpolator;->a:Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;

    iput-object p1, p0, Lcom/vivo/assist/util/TweenerInterpolator;->a:Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;

    return-void
.end method

.method private static a(F)F
    .registers 5

    float-to-double v0, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    neg-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private static synthetic a()[I
    .registers 3

    sget-object v0, Lcom/vivo/assist/util/TweenerInterpolator;->b:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->values()[Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->bounce:Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;

    invoke-virtual {v1}, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_16} :catch_203

    :goto_16
    :try_start_16
    sget-object v1, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->bouncePast:Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;

    invoke-virtual {v1}, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_20} :catch_200

    :goto_20
    :try_start_20
    sget-object v1, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->dampIn:Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;

    invoke-virtual {v1}, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_2a} :catch_1fd

    :goto_2a
    :try_start_2a
    sget-object v1, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->easeFrom:Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;

    invoke-virtual {v1}, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_34} :catch_1fa

    :goto_34
    :try_start_34
    sget-object v1, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->easeFromTo:Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;

    invoke-virtual {v1}, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3e} :catch_1f7

    :goto_3e
    :try_start_3e
    sget-object v1, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->easeInBack:Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;

    invoke-virtual {v1}, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_48} :catch_1f4

    :goto_48
    :try_start_48
    sget-object v1, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->easeInCirc:Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;

    invoke-virtual {v1}, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_52} :catch_1f1

    :goto_52
    :try_start_52
    sget-object v1, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->easeInCubic:Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;

    invoke-virtual {v1}, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_5b} :catch_1ee

    :goto_5b
    :try_start_5b
    sget-object v1, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->easeInExpo:Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;

    invoke-virtual {v1}, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_65} :catch_1eb

    :goto_65
    :try_start_65
    sget-object v1, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->easeInOutBack:Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;

    invoke-virtual {v1}, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_6f} :catch_1e8

    :goto_6f
    :try_start_6f
    sget-object v1, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->easeInOutCirc:Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;

    invoke-virtual {v1}, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_79
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f .. :try_end_79} :catch_1e5

    :goto_79
    :try_start_79
    sget-object v1, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->easeInOutCubic:Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;

    invoke-virtual {v1}, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_82
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79 .. :try_end_82} :catch_1e2

    :goto_82
    :try_start_82
    sget-object v1, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->easeInOutExpo:Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;

    invoke-virtual {v1}, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_82 .. :try_end_8c} :catch_1df

    :goto_8c
    :try_start_8c
    sget-object v1, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->easeInOutQuad:Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;

    invoke-virtual {v1}, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_95
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_95} :catch_1dc

    :goto_95
    :try_start_95
    sget-object v1, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->easeInOutQuart:Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;

    invoke-virtual {v1}, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_95 .. :try_end_9f} :catch_1d9

    :goto_9f
    :try_start_9f
    sget-object v1, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->easeInOutQuint:Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;

    invoke-virtual {v1}, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_a9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f .. :try_end_a9} :catch_1d6

    :goto_a9
    :try_start_a9
    sget-object v1, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->easeInOutSine:Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;

    invoke-virtual {v1}, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a9 .. :try_end_b3} :catch_1d3

    :goto_b3
    :try_start_b3
    sget-object v1, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->easeInQuad:Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;

    invoke-virtual {v1}, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_bc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b3 .. :try_end_bc} :catch_1d0

    :goto_bc
    :try_start_bc
    sget-object v1, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->easeInQuart:Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;

    invoke-virtual {v1}, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_c5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bc .. :try_end_c5} :catch_1cd

    :goto_c5
    :try_start_c5
    sget-object v1, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->easeInQuint:Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;

    invoke-virtual {v1}, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_cf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c5 .. :try_end_cf} :catch_1ca

    :goto_cf
    :try_start_cf
    sget-object v1, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->easeInSine:Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;

    invoke-virtual {v1}, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_d9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cf .. :try_end_d9} :catch_1c7

    :goto_d9
    :try_start_d9
    sget-object v1, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->easeOutBack:Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;

    invoke-virtual {v1}, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_e3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d9 .. :try_end_e3} :catch_1c4

    :goto_e3
    :try_start_e3
    sget-object v1, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->easeOutBounce:Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;

    invoke-virtual {v1}, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_ed
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e3 .. :try_end_ed} :catch_1c1

    :goto_ed
    :try_start_ed
    sget-object v1, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->easeOutCirc:Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;

    invoke-virtual {v1}, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_f7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ed .. :try_end_f7} :catch_1be

    :goto_f7
    :try_start_f7
    sget-object v1, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->easeOutCubic:Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;

    invoke-virtual {v1}, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_100
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f7 .. :try_end_100} :catch_1bb

    :goto_100
    :try_start_100
    sget-object v1, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->easeOutExpo:Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;

    invoke-virtual {v1}, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_100 .. :try_end_10a} :catch_1b8

    :goto_10a
    :try_start_10a
    sget-object v1, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->easeOutQuad:Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;

    invoke-virtual {v1}, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_113
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10a .. :try_end_113} :catch_1b5

    :goto_113
    :try_start_113
    sget-object v1, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->easeOutQuart:Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;

    invoke-virtual {v1}, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_11d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_113 .. :try_end_11d} :catch_1b2

    :goto_11d
    :try_start_11d
    sget-object v1, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->easeOutQuint:Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;

    invoke-virtual {v1}, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_127
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11d .. :try_end_127} :catch_1af

    :goto_127
    :try_start_127
    sget-object v1, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->easeOutSine:Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;

    invoke-virtual {v1}, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_131
    .catch Ljava/lang/NoSuchFieldError; {:try_start_127 .. :try_end_131} :catch_1ad

    :goto_131
    :try_start_131
    sget-object v1, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->easeTo:Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;

    invoke-virtual {v1}, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_13b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_131 .. :try_end_13b} :catch_1ab

    :goto_13b
    :try_start_13b
    sget-object v1, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->elastic:Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;

    invoke-virtual {v1}, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_145
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13b .. :try_end_145} :catch_1a9

    :goto_145
    :try_start_145
    sget-object v1, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->flicker:Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;

    invoke-virtual {v1}, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_14f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_145 .. :try_end_14f} :catch_1a7

    :goto_14f
    :try_start_14f
    sget-object v1, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->reverse:Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;

    invoke-virtual {v1}, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_159
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14f .. :try_end_159} :catch_1a5

    :goto_159
    :try_start_159
    sget-object v1, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->sinusoidal:Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;

    invoke-virtual {v1}, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_163
    .catch Ljava/lang/NoSuchFieldError; {:try_start_159 .. :try_end_163} :catch_1a3

    :goto_163
    :try_start_163
    sget-object v1, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->spring:Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;

    invoke-virtual {v1}, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_16d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_163 .. :try_end_16d} :catch_1a1

    :goto_16d
    :try_start_16d
    sget-object v1, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->swingFrom:Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;

    invoke-virtual {v1}, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_177
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16d .. :try_end_177} :catch_19f

    :goto_177
    :try_start_177
    sget-object v1, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->swingFromTo:Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;

    invoke-virtual {v1}, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_181
    .catch Ljava/lang/NoSuchFieldError; {:try_start_177 .. :try_end_181} :catch_19d

    :goto_181
    :try_start_181
    sget-object v1, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->swingTo:Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;

    invoke-virtual {v1}, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_18b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_181 .. :try_end_18b} :catch_19b

    :goto_18b
    :try_start_18b
    sget-object v1, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->wobble:Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;

    invoke-virtual {v1}, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_195
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18b .. :try_end_195} :catch_199

    :goto_195
    sput-object v0, Lcom/vivo/assist/util/TweenerInterpolator;->b:[I

    goto/16 :goto_4

    :catch_199
    move-exception v1

    goto :goto_195

    :catch_19b
    move-exception v1

    goto :goto_18b

    :catch_19d
    move-exception v1

    goto :goto_181

    :catch_19f
    move-exception v1

    goto :goto_177

    :catch_1a1
    move-exception v1

    goto :goto_16d

    :catch_1a3
    move-exception v1

    goto :goto_163

    :catch_1a5
    move-exception v1

    goto :goto_159

    :catch_1a7
    move-exception v1

    goto :goto_14f

    :catch_1a9
    move-exception v1

    goto :goto_145

    :catch_1ab
    move-exception v1

    goto :goto_13b

    :catch_1ad
    move-exception v1

    goto :goto_131

    :catch_1af
    move-exception v1

    goto/16 :goto_127

    :catch_1b2
    move-exception v1

    goto/16 :goto_11d

    :catch_1b5
    move-exception v1

    goto/16 :goto_113

    :catch_1b8
    move-exception v1

    goto/16 :goto_10a

    :catch_1bb
    move-exception v1

    goto/16 :goto_100

    :catch_1be
    move-exception v1

    goto/16 :goto_f7

    :catch_1c1
    move-exception v1

    goto/16 :goto_ed

    :catch_1c4
    move-exception v1

    goto/16 :goto_e3

    :catch_1c7
    move-exception v1

    goto/16 :goto_d9

    :catch_1ca
    move-exception v1

    goto/16 :goto_cf

    :catch_1cd
    move-exception v1

    goto/16 :goto_c5

    :catch_1d0
    move-exception v1

    goto/16 :goto_bc

    :catch_1d3
    move-exception v1

    goto/16 :goto_b3

    :catch_1d6
    move-exception v1

    goto/16 :goto_a9

    :catch_1d9
    move-exception v1

    goto/16 :goto_9f

    :catch_1dc
    move-exception v1

    goto/16 :goto_95

    :catch_1df
    move-exception v1

    goto/16 :goto_8c

    :catch_1e2
    move-exception v1

    goto/16 :goto_82

    :catch_1e5
    move-exception v1

    goto/16 :goto_79

    :catch_1e8
    move-exception v1

    goto/16 :goto_6f

    :catch_1eb
    move-exception v1

    goto/16 :goto_65

    :catch_1ee
    move-exception v1

    goto/16 :goto_5b

    :catch_1f1
    move-exception v1

    goto/16 :goto_52

    :catch_1f4
    move-exception v1

    goto/16 :goto_48

    :catch_1f7
    move-exception v1

    goto/16 :goto_3e

    :catch_1fa
    move-exception v1

    goto/16 :goto_34

    :catch_1fd
    move-exception v1

    goto/16 :goto_2a

    :catch_200
    move-exception v1

    goto/16 :goto_20

    :catch_203
    move-exception v1

    goto/16 :goto_16
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 14

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v6, 0x40000000    # 2.0f

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/vivo/assist/util/TweenerInterpolator;->a()[I

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/assist/util/TweenerInterpolator;->a:Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;

    invoke-virtual {v2}, Lcom/vivo/assist/util/TweenerInterpolator$TweenerType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3f6

    move v0, p1

    :cond_1a
    :goto_1a
    return v0

    :pswitch_1b
    float-to-double v0, p1

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_1a

    :pswitch_22
    sub-float v0, p1, v0

    float-to-double v0, v0

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    neg-double v0, v0

    double-to-float v0, v0

    goto :goto_1a

    :pswitch_2f
    div-float v1, p1, v3

    cmpg-float v0, v1, v0

    if-gez v0, :cond_3d

    float-to-double v0, v1

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v10

    double-to-float v0, v0

    goto :goto_1a

    :cond_3d
    const/high16 v0, -0x41000000    # -0.5f

    sub-float/2addr v1, v6

    mul-float/2addr v1, v1

    sub-float/2addr v1, v6

    mul-float/2addr v0, v1

    goto :goto_1a

    :pswitch_44
    float-to-double v0, p1

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_1a

    :pswitch_4d
    sub-float v0, p1, v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_1a

    :pswitch_5b
    div-float v1, p1, v3

    cmpg-float v0, v1, v0

    if-gez v0, :cond_6b

    float-to-double v0, v1

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v10

    double-to-float v0, v0

    goto :goto_1a

    :cond_6b
    sub-float v0, v1, v6

    float-to-double v0, v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v0, v8

    mul-double/2addr v0, v10

    double-to-float v0, v0

    goto :goto_1a

    :pswitch_78
    float-to-double v0, p1

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_1a

    :pswitch_81
    sub-float v0, p1, v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    neg-double v0, v0

    double-to-float v0, v0

    goto :goto_1a

    :pswitch_90
    float-to-double v2, p1

    div-double/2addr v2, v10

    double-to-float v1, v2

    cmpg-float v0, v1, v0

    if-gez v0, :cond_a2

    float-to-double v0, v1

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v10

    double-to-float v0, v0

    goto/16 :goto_1a

    :cond_a2
    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    sub-float v0, v1, v6

    float-to-double v4, v0

    float-to-double v0, v0

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v4

    sub-double/2addr v0, v8

    mul-double/2addr v0, v2

    double-to-float v0, v0

    goto/16 :goto_1a

    :pswitch_b4
    float-to-double v0, p1

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    goto/16 :goto_1a

    :pswitch_be
    sub-float v0, p1, v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    goto/16 :goto_1a

    :pswitch_cd
    div-float v1, p1, v3

    cmpg-float v0, v1, v0

    if-gez v0, :cond_de

    float-to-double v0, v1

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v10

    double-to-float v0, v0

    goto/16 :goto_1a

    :cond_de
    sub-float v0, v1, v6

    float-to-double v0, v0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v0, v8

    mul-double/2addr v0, v10

    double-to-float v0, v0

    goto/16 :goto_1a

    :pswitch_ec
    float-to-double v2, p1

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr v2, v4

    double-to-float v1, v2

    invoke-static {v1}, Landroid/util/FloatMath;->cos(F)F

    move-result v1

    neg-float v1, v1

    add-float/2addr v0, v1

    goto/16 :goto_1a

    :pswitch_fc
    float-to-double v0, p1

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr v0, v2

    double-to-float v0, v0

    invoke-static {v0}, Landroid/util/FloatMath;->sin(F)F

    move-result v0

    goto/16 :goto_1a

    :pswitch_10a
    const-wide/high16 v0, -0x4020000000000000L    # -0.5

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    float-to-double v4, p1

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-float v0, v0

    goto/16 :goto_1a

    :pswitch_11e
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_128

    const-wide/16 v0, 0x0

    :goto_125
    double-to-float v0, v0

    goto/16 :goto_1a

    :cond_128
    const/high16 v1, 0x41200000    # 10.0f

    sub-float v0, p1, v0

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_125

    :pswitch_133
    cmpl-float v0, p1, v0

    if-nez v0, :cond_13c

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_139
    double-to-float v0, v0

    goto/16 :goto_1a

    :cond_13c
    const/high16 v0, -0x3ee00000    # -10.0f

    mul-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    neg-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    goto :goto_139

    :pswitch_149
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_151

    const/4 v0, 0x0

    goto/16 :goto_1a

    :cond_151
    cmpl-float v1, p1, v0

    if-eqz v1, :cond_1a

    div-float v1, p1, v3

    cmpg-float v2, v1, v0

    if-gez v2, :cond_169

    const/high16 v2, 0x41200000    # 10.0f

    sub-float v0, v1, v0

    mul-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v10

    double-to-float v0, v0

    goto/16 :goto_1a

    :cond_169
    const/high16 v2, -0x3ee00000    # -10.0f

    sub-float v0, v1, v0

    mul-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    neg-double v0, v0

    add-double/2addr v0, v8

    mul-double/2addr v0, v10

    double-to-float v0, v0

    goto/16 :goto_1a

    :pswitch_179
    mul-float v1, p1, p1

    sub-float v1, v0, v1

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    sub-float v0, v1, v0

    neg-float v0, v0

    goto/16 :goto_1a

    :pswitch_186
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-float v0, p1, v0

    float-to-double v0, v0

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double v0, v2, v0

    double-to-float v0, v0

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    goto/16 :goto_1a

    :pswitch_198
    div-float v1, p1, v3

    cmpg-float v2, v1, v0

    if-gez v2, :cond_1ac

    const/high16 v2, -0x41000000    # -0.5f

    mul-float/2addr v1, v1

    sub-float v1, v0, v1

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    sub-float v0, v1, v0

    mul-float/2addr v0, v2

    goto/16 :goto_1a

    :cond_1ac
    sub-float/2addr v1, v6

    mul-float/2addr v1, v1

    sub-float v1, v0, v1

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    add-float/2addr v0, v1

    mul-float/2addr v0, v3

    goto/16 :goto_1a

    :pswitch_1b8
    mul-float v0, p1, p1

    const v1, 0x402ce6b0

    mul-float/2addr v1, p1

    const v2, 0x3fd9cd60

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    goto/16 :goto_1a

    :pswitch_1c5
    sub-float v1, p1, v0

    mul-float v2, v1, v1

    const v3, 0x402ce6b0

    mul-float/2addr v1, v3

    const v3, 0x3fd9cd60

    add-float/2addr v1, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    goto/16 :goto_1a

    :pswitch_1d5
    div-float v1, p1, v3

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1e9

    mul-float v0, v1, v1

    const v2, 0x406612ff

    mul-float/2addr v1, v2

    const v2, 0x402612ff

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    mul-float/2addr v0, v3

    goto/16 :goto_1a

    :cond_1e9
    sub-float v0, v1, v6

    mul-float v1, v0, v0

    const v2, 0x406612ff

    mul-float/2addr v0, v2

    const v2, 0x402612ff

    add-float/2addr v0, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v6

    mul-float/2addr v0, v3

    goto/16 :goto_1a

    :pswitch_1fa
    const v0, 0x3eba2e8c

    cmpg-float v0, p1, v0

    if-gez v0, :cond_207

    const/high16 v0, 0x40f20000    # 7.5625f

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    goto/16 :goto_1a

    :cond_207
    const v0, 0x3f3a2e8c

    cmpg-float v0, p1, v0

    if-gez v0, :cond_21f

    const/high16 v0, 0x40f20000    # 7.5625f

    float-to-double v2, p1

    const-wide v4, 0x3fe1745d1745d174L    # 0.5454545454545454

    sub-double/2addr v2, v4

    double-to-float v1, v2

    mul-float/2addr v0, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f400000    # 0.75f

    add-float/2addr v0, v1

    goto/16 :goto_1a

    :cond_21f
    float-to-double v0, p1

    const-wide v2, 0x3fed1745d1745d17L    # 0.9090909090909091

    cmpg-double v0, v0, v2

    if-gez v0, :cond_23a

    const/high16 v0, 0x40f20000    # 7.5625f

    float-to-double v2, p1

    const-wide v4, 0x3fea2e8ba2e8ba2fL    # 0.8181818181818182

    sub-double/2addr v2, v4

    double-to-float v1, v2

    mul-float/2addr v0, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f700000    # 0.9375f

    add-float/2addr v0, v1

    goto/16 :goto_1a

    :cond_23a
    const/high16 v0, 0x40f20000    # 7.5625f

    float-to-double v2, p1

    const-wide v4, 0x3fee8ba2e8ba2e8cL    # 0.9545454545454546

    sub-double/2addr v2, v4

    double-to-float v1, v2

    mul-float/2addr v0, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f7c0000    # 0.984375f

    add-float/2addr v0, v1

    goto/16 :goto_1a

    :pswitch_24b
    const v0, 0x3eba2e8c

    cmpg-float v0, p1, v0

    if-gez v0, :cond_258

    const/high16 v0, 0x40f20000    # 7.5625f

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    goto/16 :goto_1a

    :cond_258
    const v0, 0x3f3a2e8c

    cmpg-float v0, p1, v0

    if-gez v0, :cond_272

    const/high16 v0, 0x40f20000    # 7.5625f

    float-to-double v2, p1

    const-wide v4, 0x3fe1745d1745d174L    # 0.5454545454545454

    sub-double/2addr v2, v4

    double-to-float v1, v2

    mul-float/2addr v0, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f400000    # 0.75f

    add-float/2addr v0, v1

    sub-float v0, v6, v0

    goto/16 :goto_1a

    :cond_272
    float-to-double v0, p1

    const-wide v2, 0x3fed1745d1745d17L    # 0.9090909090909091

    cmpg-double v0, v0, v2

    if-gez v0, :cond_28f

    const/high16 v0, 0x40f20000    # 7.5625f

    float-to-double v2, p1

    const-wide v4, 0x3fea2e8ba2e8ba2fL    # 0.8181818181818182

    sub-double/2addr v2, v4

    double-to-float v1, v2

    mul-float/2addr v0, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f700000    # 0.9375f

    add-float/2addr v0, v1

    sub-float v0, v6, v0

    goto/16 :goto_1a

    :cond_28f
    const/high16 v0, 0x40f20000    # 7.5625f

    float-to-double v2, p1

    const-wide v4, 0x3fee8ba2e8ba2e8cL    # 0.9545454545454546

    sub-double/2addr v2, v4

    double-to-float v1, v2

    mul-float/2addr v0, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f7c0000    # 0.984375f

    add-float/2addr v0, v1

    sub-float v0, v6, v0

    goto/16 :goto_1a

    :pswitch_2a2
    float-to-double v0, p1

    const-wide v2, 0x3fd745d1745d1746L    # 0.36363636363636365

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2b2

    const/high16 v0, 0x40f20000    # 7.5625f

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    goto/16 :goto_1a

    :cond_2b2
    const v0, 0x3f3a2e8c

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2c7

    const/high16 v0, 0x40f20000    # 7.5625f

    const v1, 0x3f0ba2e9

    sub-float v1, p1, v1

    mul-float/2addr v0, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f400000    # 0.75f

    add-float/2addr v0, v1

    goto/16 :goto_1a

    :cond_2c7
    float-to-double v0, p1

    const-wide v2, 0x3fed1745d1745d17L    # 0.9090909090909091

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2df

    const/high16 v0, 0x40f20000    # 7.5625f

    const v1, 0x3f51745d

    sub-float v1, p1, v1

    mul-float/2addr v0, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f700000    # 0.9375f

    add-float/2addr v0, v1

    goto/16 :goto_1a

    :cond_2df
    const/high16 v0, 0x40f20000    # 7.5625f

    const v1, 0x3f745d17

    sub-float v1, p1, v1

    mul-float/2addr v0, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f7c0000    # 0.984375f

    add-float/2addr v0, v1

    goto/16 :goto_1a

    :pswitch_2ed
    div-float v1, p1, v3

    cmpg-float v0, v1, v0

    if-gez v0, :cond_2fe

    float-to-double v0, v1

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v10

    double-to-float v0, v0

    goto/16 :goto_1a

    :cond_2fe
    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    sub-float v0, v1, v6

    float-to-double v4, v0

    float-to-double v0, v0

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v4

    sub-double/2addr v0, v8

    mul-double/2addr v0, v2

    double-to-float v0, v0

    goto/16 :goto_1a

    :pswitch_310
    float-to-double v0, p1

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    goto/16 :goto_1a

    :pswitch_31a
    float-to-double v0, p1

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    goto/16 :goto_1a

    :pswitch_324
    div-float v1, p1, v3

    cmpg-float v0, v1, v0

    if-gez v0, :cond_338

    mul-float v0, v1, v1

    const v2, 0x406612ff

    mul-float/2addr v1, v2

    const v2, 0x402612ff

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    mul-float/2addr v0, v3

    goto/16 :goto_1a

    :cond_338
    sub-float v0, v1, v6

    mul-float v1, v0, v0

    const v2, 0x406612ff

    mul-float/2addr v0, v2

    const v2, 0x402612ff

    add-float/2addr v0, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v6

    mul-float/2addr v0, v3

    goto/16 :goto_1a

    :pswitch_349
    mul-float v0, p1, p1

    const v1, 0x402ce6b0

    mul-float/2addr v1, p1

    const v2, 0x3fd9cd60

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    goto/16 :goto_1a

    :pswitch_356
    sub-float v1, p1, v0

    mul-float v2, v1, v1

    const v3, 0x402ce6b0

    mul-float/2addr v1, v3

    const v3, 0x3fd9cd60

    add-float/2addr v1, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    goto/16 :goto_1a

    :pswitch_366
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    const/high16 v1, -0x3f000000    # -8.0f

    mul-float/2addr v1, p1

    float-to-double v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v1, p1

    sub-float v0, v1, v0

    float-to-double v0, v0

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v0, v4

    div-double/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    goto/16 :goto_1a

    :pswitch_38b
    invoke-static {p1}, Lcom/vivo/assist/util/TweenerInterpolator;->a(F)F

    move-result v0

    goto/16 :goto_1a

    :pswitch_391
    sub-float/2addr v0, p1

    goto/16 :goto_1a

    :pswitch_394
    float-to-double v2, p1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    sub-double/2addr v4, v10

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v1, v2

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_3ab

    const/4 v0, 0x0

    :cond_3a5
    :goto_3a5
    invoke-static {v0}, Lcom/vivo/assist/util/TweenerInterpolator;->a(F)F

    move-result v0

    goto/16 :goto_1a

    :cond_3ab
    cmpl-float v2, v1, v0

    if-gtz v2, :cond_3a5

    move v0, v1

    goto :goto_3a5

    :pswitch_3b1
    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const/high16 v2, 0x41100000    # 9.0f

    mul-float/2addr v2, p1

    float-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    neg-double v0, v0

    div-double/2addr v0, v8

    add-double/2addr v0, v10

    double-to-float v0, v0

    goto/16 :goto_1a

    :pswitch_3c7
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/high16 v2, 0x40900000    # 4.5f

    mul-float/2addr v2, p1

    float-to-double v2, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    neg-float v4, p1

    const/high16 v5, 0x40c00000    # 6.0f

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v0, v0

    goto/16 :goto_1a

    :pswitch_3e5
    sub-float/2addr v0, p1

    float-to-double v0, v0

    const-wide v2, 0x402f6a7a2955385eL    # 15.707963267948966

    float-to-double v4, p1

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    goto/16 :goto_1a

    :pswitch_data_3f6
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_22
        :pswitch_2f
        :pswitch_44
        :pswitch_4d
        :pswitch_5b
        :pswitch_78
        :pswitch_81
        :pswitch_90
        :pswitch_b4
        :pswitch_be
        :pswitch_cd
        :pswitch_ec
        :pswitch_fc
        :pswitch_10a
        :pswitch_11e
        :pswitch_133
        :pswitch_149
        :pswitch_179
        :pswitch_186
        :pswitch_198
        :pswitch_1b8
        :pswitch_1c5
        :pswitch_1d5
        :pswitch_1fa
        :pswitch_24b
        :pswitch_2a2
        :pswitch_2ed
        :pswitch_310
        :pswitch_31a
        :pswitch_324
        :pswitch_349
        :pswitch_356
        :pswitch_366
        :pswitch_38b
        :pswitch_391
        :pswitch_394
        :pswitch_3b1
        :pswitch_3c7
        :pswitch_3e5
    .end packed-switch
.end method
