.class final Lcom/vivo/sdkplugin/Utils/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/Utils/y;->a:Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/y;->a:Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;->a(Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->exportDB(Landroid/content/Context;)V

    return-void
.end method
