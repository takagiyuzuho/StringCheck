//
//  ViewController.m
//  StringCheck
//
//  Created by takagi-yuzuho on 2017/06/26.
//  Copyright © 2017年 ITC. All rights reserved.
//

//a：何も入力していなかった場合は、「何も入力されていません」と表示させ再度入力待ち状態にする。
//※「いまなにしてる？」という文言も再度表示させる。
//b：140文字以上の場合、「投稿文が長すぎます」と表示させ再度入力待ち状態にする。
//c：スペースのみで入力されている場合、「何も入力されていません」と表示させ再度入力待ち状態にする。
//d：両端にスペースがあった場合は、そのスペースを除去する。
//
//1．入力制限系の処理を「正規表現チェック」で作成させる
//2．ログ出力するよう機能を追加する(入力値をテキストファイルに書き出す)

#import "ViewController.h"
#import "StringUtil.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *inputText;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)toResultButton:(id)sender {
    NSString* text = [StringUtil isStringCheckWithParam:self.inputText.text];
    self.resultLabel.text = text;
}

@end
