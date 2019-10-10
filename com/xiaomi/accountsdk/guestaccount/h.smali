.class public abstract Lcom/xiaomi/accountsdk/guestaccount/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/accountsdk/guestaccount/j;


# instance fields
.field protected final a:Landroid/content/Context;

.field private final b:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper$Holder;->a:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/h;->b:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/guestaccount/h;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/accountsdk/guestaccount/j;
    .registers 3

    .line 24
    sget-object v0, Lcom/xiaomi/accountsdk/guestaccount/data/d;->c:Lcom/xiaomi/accountsdk/guestaccount/data/d;

    sget-object v1, Lcom/xiaomi/accountsdk/guestaccount/data/e;->a:Lcom/xiaomi/accountsdk/guestaccount/data/e;

    invoke-static {p0, v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/h;->a(Landroid/content/Context;Lcom/xiaomi/accountsdk/guestaccount/data/d;Lcom/xiaomi/accountsdk/guestaccount/data/e;)Lcom/xiaomi/accountsdk/guestaccount/j;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/xiaomi/accountsdk/guestaccount/data/d;Lcom/xiaomi/accountsdk/guestaccount/data/e;)Lcom/xiaomi/accountsdk/guestaccount/j;
    .registers 7

    if-eqz p0, :cond_77

    if-eqz p1, :cond_6f

    if-eqz p2, :cond_67

    .line 39
    sget-object v0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManager$1;->a:[I

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_80

    .line 73
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "not here"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 50
    :pswitch_19
    invoke-static {p0}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui;->c(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_24

    .line 51
    invoke-static {p0, p2}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->a(Landroid/content/Context;Lcom/xiaomi/accountsdk/guestaccount/data/e;)Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;

    move-result-object p0

    goto :goto_66

    :cond_24
    const/4 p1, 0x0

    .line 56
    invoke-static {p1}, Lcom/xiaomi/accountsdk/utils/p;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_3e

    new-instance v0, Lcom/xiaomi/accountsdk/utils/r;

    const/16 v1, 0x8

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/accountsdk/utils/r;-><init>(II)V

    .line 57
    invoke-static {v0, p1}, Lcom/xiaomi/accountsdk/utils/r;->a(Lcom/xiaomi/accountsdk/utils/r;Z)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 58
    invoke-static {p0, p2}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->a(Landroid/content/Context;Lcom/xiaomi/accountsdk/guestaccount/data/e;)Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;

    move-result-object p0

    goto :goto_66

    .line 63
    :cond_3e
    invoke-static {p1}, Lcom/xiaomi/accountsdk/utils/p;->c(Z)Z

    move-result v0

    if-eqz v0, :cond_58

    new-instance v0, Lcom/xiaomi/accountsdk/utils/q;

    const/4 v1, 0x6

    const/16 v2, 0xb

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/accountsdk/utils/q;-><init>(III)V

    .line 64
    invoke-static {v0, p1}, Lcom/xiaomi/accountsdk/utils/q;->a(Lcom/xiaomi/accountsdk/utils/q;Z)Z

    move-result p1

    if-eqz p1, :cond_58

    .line 65
    invoke-static {p0, p2}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->a(Landroid/content/Context;Lcom/xiaomi/accountsdk/guestaccount/data/e;)Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;

    move-result-object p0

    goto :goto_66

    .line 69
    :cond_58
    invoke-static {p0}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui;->b(Landroid/content/Context;)Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui;

    move-result-object p0

    goto :goto_66

    .line 45
    :pswitch_5d
    invoke-static {p0}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui;->b(Landroid/content/Context;)Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplMiui;

    move-result-object p0

    goto :goto_66

    .line 41
    :pswitch_62
    invoke-static {p0, p2}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;->a(Landroid/content/Context;Lcom/xiaomi/accountsdk/guestaccount/data/e;)Lcom/xiaomi/accountsdk/guestaccount/GuestAccountManagerImplApp;

    move-result-object p0

    :goto_66
    return-object p0

    .line 36
    :cond_67
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "type == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 33
    :cond_6f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "policy == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 30
    :cond_77
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_62
        :pswitch_5d
        :pswitch_19
    .end packed-switch
.end method


# virtual methods
.method public final a()Lcom/xiaomi/accountsdk/guestaccount/data/b;
    .registers 3

    .line 85
    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/f;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/f;-><init>()V

    const-string v1, "0.0.4"

    .line 86
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/f;->c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/f;

    move-result-object v0

    .line 87
    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/guestaccount/h;->a(Lcom/xiaomi/accountsdk/guestaccount/data/f;)Lcom/xiaomi/accountsdk/guestaccount/data/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/b;
    .registers 3

    .line 93
    invoke-virtual {p0, p1, p2, p2}, Lcom/xiaomi/accountsdk/guestaccount/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/b;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/b;
    .registers 5

    .line 98
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 102
    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/f;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/f;-><init>()V

    .line 103
    invoke-virtual {v0, p3}, Lcom/xiaomi/accountsdk/guestaccount/data/f;->b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/f;

    move-result-object p3

    .line 104
    invoke-virtual {p3, p2}, Lcom/xiaomi/accountsdk/guestaccount/data/f;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/f;

    move-result-object p2

    const-string p3, "0.0.4"

    .line 105
    invoke-virtual {p2, p3}, Lcom/xiaomi/accountsdk/guestaccount/data/f;->c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/f;

    move-result-object p2

    .line 107
    new-instance p3, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper$GuestAccountIntentHandlerImpl;

    invoke-direct {p3, p1}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper$GuestAccountIntentHandlerImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2, p3}, Lcom/xiaomi/accountsdk/guestaccount/h;->a(Lcom/xiaomi/accountsdk/guestaccount/data/f;Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountIntentHandler;)Lcom/xiaomi/accountsdk/guestaccount/data/b;

    move-result-object p1

    return-object p1

    .line 99
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sid == null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract a(Lcom/xiaomi/accountsdk/guestaccount/data/f;)Lcom/xiaomi/accountsdk/guestaccount/data/b;
.end method

.method protected abstract a(Lcom/xiaomi/accountsdk/guestaccount/data/f;Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountIntentHandler;)Lcom/xiaomi/accountsdk/guestaccount/data/b;
.end method

.method public final a(Landroid/app/Activity;Lcom/xiaomi/accountsdk/guestaccount/data/c;)V
    .registers 4

    .line 126
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/h;->b:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper;->a(Landroid/app/Activity;Lcom/xiaomi/accountsdk/guestaccount/data/c;)V

    return-void
.end method

.method public final a(Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper$StringResourceInjector;)V
    .registers 3

    .line 131
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/h;->b:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper;->a(Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper$StringResourceInjector;)V

    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/b;
    .registers 4

    if-eqz p2, :cond_1f

    .line 116
    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/f;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/f;-><init>()V

    .line 117
    invoke-virtual {v0, p2}, Lcom/xiaomi/accountsdk/guestaccount/data/f;->b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/f;

    move-result-object v0

    .line 118
    invoke-virtual {v0, p2}, Lcom/xiaomi/accountsdk/guestaccount/data/f;->a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/f;

    move-result-object p2

    const-string v0, "0.0.4"

    .line 119
    invoke-virtual {p2, v0}, Lcom/xiaomi/accountsdk/guestaccount/data/f;->c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/f;

    move-result-object p2

    .line 121
    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper$GuestAccountIntentHandlerImpl;

    invoke-direct {v0, p1}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper$GuestAccountIntentHandlerImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2, v0}, Lcom/xiaomi/accountsdk/guestaccount/h;->b(Lcom/xiaomi/accountsdk/guestaccount/data/f;Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountIntentHandler;)Lcom/xiaomi/accountsdk/guestaccount/data/b;

    move-result-object p1

    return-object p1

    .line 113
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sid == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract b(Lcom/xiaomi/accountsdk/guestaccount/data/f;Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountIntentHandler;)Lcom/xiaomi/accountsdk/guestaccount/data/b;
.end method
