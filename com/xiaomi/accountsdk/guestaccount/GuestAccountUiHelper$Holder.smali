.class Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper$Holder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Holder"
.end annotation


# static fields
.field static a:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper$Holder;->a:Lcom/xiaomi/accountsdk/guestaccount/GuestAccountUiHelper;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
