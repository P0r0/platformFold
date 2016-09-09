.class final Lcom/vivo/sdkplugin/Utils/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/app/ActivityManager;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Landroid/app/ActivityManager;I)V
    .registers 3

    iput-object p1, p0, Lcom/vivo/sdkplugin/Utils/y;->a:Landroid/app/ActivityManager;

    iput p2, p0, Lcom/vivo/sdkplugin/Utils/y;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    const-string v0, "VivoMakeDiffUtil"

    const-string v1, "moveTaskToFront"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/y;->a:Landroid/app/ActivityManager;

    iget v1, p0, Lcom/vivo/sdkplugin/Utils/y;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    return-void
.end method
