.class public Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper$GuestAccountIntentHandlerImpl;,
        Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper$Holder;,
        Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper$StringResourceInjector;
    }
.end annotation


# static fields
.field private static final b:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper$StringResourceInjector;

.field private static final c:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper$StringResourceInjector;


# instance fields
.field a:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper$StringResourceInjector;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper$1;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper$1;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper;->b:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper$StringResourceInjector;

    .line 61
    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper$2;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper$2;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper;->c:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper$StringResourceInjector;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper$StringResourceInjector;
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper;->a:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper$StringResourceInjector;

    if-eqz v0, :cond_7

    .line 130
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper;->a:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper$StringResourceInjector;

    return-object v0

    .line 131
    :cond_7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 132
    sget-object v0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper;->b:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper$StringResourceInjector;

    return-object v0

    .line 134
    :cond_16
    sget-object v0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper;->c:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper$StringResourceInjector;

    return-object v0
.end method

.method final a(Landroid/app/Activity;Lcom/xiaomi/accountsdk/guestaccount/data/c;)V
    .registers 6

    if-nez p2, :cond_3

    return-void

    .line 108
    :cond_3
    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->e()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 110
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 114
    :cond_d
    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->b()I

    move-result v0

    .line 115
    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->c()Ljava/lang/String;

    move-result-object p2

    if-nez v0, :cond_18

    return-void

    .line 120
    :cond_18
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper;->a()Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper$StringResourceInjector;

    move-result-object v1

    .line 121
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 122
    invoke-interface {v1, v0}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper$StringResourceInjector;->a(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 123
    invoke-interface {v1, v0, p2}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper$StringResourceInjector;->a(ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x104000a

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 125
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method final a(Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper$StringResourceInjector;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 100
    iput-object p1, p0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper;->a:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper$StringResourceInjector;

    return-void

    .line 98
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "stringResourceInjector == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
