.class Lcom/miui/vsimcore/service/VsimOnchipService$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/vsimcore/service/VsimOnchipService$1;->registerToModem(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/vsimcore/service/VsimOnchipService$1;

.field final synthetic val$slotId:I


# direct methods
.method constructor <init>(Lcom/miui/vsimcore/service/VsimOnchipService$1;I)V
    .registers 3

    .line 92
    iput-object p1, p0, Lcom/miui/vsimcore/service/VsimOnchipService$1$1;->this$1:Lcom/miui/vsimcore/service/VsimOnchipService$1;

    iput p2, p0, Lcom/miui/vsimcore/service/VsimOnchipService$1$1;->val$slotId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const-string v0, "VSC-VsimOnchipService"

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register to modem, slotId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/vsimcore/service/VsimOnchipService$1$1;->val$slotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget v0, p0, Lcom/miui/vsimcore/service/VsimOnchipService$1$1;->val$slotId:I

    invoke-static {v0}, Lusb/uicc/client/daemon;->registerToModem(I)I

    return-void
.end method
