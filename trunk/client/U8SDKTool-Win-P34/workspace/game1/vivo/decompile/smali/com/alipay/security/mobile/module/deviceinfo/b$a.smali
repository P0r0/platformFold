.class final Lcom/alipay/security/mobile/module/deviceinfo/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/security/mobile/module/deviceinfo/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/hardware/Camera$Size;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/security/mobile/module/deviceinfo/b;


# direct methods
.method private constructor <init>(Lcom/alipay/security/mobile/module/deviceinfo/b;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/security/mobile/module/deviceinfo/b$a;->a:Lcom/alipay/security/mobile/module/deviceinfo/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/security/mobile/module/deviceinfo/b;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/alipay/security/mobile/module/deviceinfo/b$a;-><init>(Lcom/alipay/security/mobile/module/deviceinfo/b;)V

    return-void
.end method

.method private static a(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I
    .registers 4

    iget v0, p0, Landroid/hardware/Camera$Size;->width:I

    iget v1, p1, Landroid/hardware/Camera$Size;->width:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    iget v0, p0, Landroid/hardware/Camera$Size;->width:I

    iget v1, p1, Landroid/hardware/Camera$Size;->width:I

    if-le v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_7

    :cond_10
    const/4 v0, -0x1

    goto :goto_7
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    check-cast p1, Landroid/hardware/Camera$Size;

    check-cast p2, Landroid/hardware/Camera$Size;

    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    iget v1, p2, Landroid/hardware/Camera$Size;->width:I

    if-ne v0, v1, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    iget v1, p2, Landroid/hardware/Camera$Size;->width:I

    if-le v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_b

    :cond_14
    const/4 v0, -0x1

    goto :goto_b
.end method
