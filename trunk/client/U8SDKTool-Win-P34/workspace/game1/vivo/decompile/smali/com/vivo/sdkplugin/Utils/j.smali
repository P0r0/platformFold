.class final Lcom/vivo/sdkplugin/Utils/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/Utils/j;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->exportDB(Landroid/content/Context;)V

    return-void
.end method
