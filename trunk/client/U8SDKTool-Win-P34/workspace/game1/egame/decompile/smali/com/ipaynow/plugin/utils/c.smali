.class public final Lcom/ipaynow/plugin/utils/c;
.super Ljava/lang/Object;


# static fields
.field public static h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/ipaynow/plugin/a/c;->h:Z

    sput-boolean v0, Lcom/ipaynow/plugin/utils/c;->h:Z

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .registers 2

    sget-boolean v0, Lcom/ipaynow/plugin/utils/c;->h:Z

    if-eqz v0, :cond_9

    const-string v0, "ipaynow"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 2

    sget-boolean v0, Lcom/ipaynow/plugin/utils/c;->h:Z

    if-eqz v0, :cond_9

    const-string v0, "ipaynow"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/ipaynow/plugin/utils/c;->h:Z

    if-eqz v0, :cond_7

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method
