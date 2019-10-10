.class final Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper$GuestAccountIntentHandlerImpl;
.super Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountIntentHandler$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GuestAccountIntentHandlerImpl"
.end annotation


# instance fields
.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 141
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountIntentHandler$Stub;-><init>()V

    .line 142
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_a

    check-cast p1, Landroid/app/Activity;

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    .line 143
    :goto_b
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper$GuestAccountIntentHandlerImpl;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper$GuestAccountIntentHandlerImpl;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz p1, :cond_18

    if-eqz v0, :cond_18

    .line 149
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_18

    .line 152
    :cond_13
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    :cond_18
    :goto_18
    const/4 p1, 0x0

    return p1
.end method
