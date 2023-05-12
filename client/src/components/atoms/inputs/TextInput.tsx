import React, { ChangeEvent, useState } from 'react';
import './TextInput.scss';

interface TextInputProps {
  label: string;
  value: string | number;
  stroke?: boolean;
  onChange?: (event: React.ChangeEvent<HTMLInputElement>) => void;
  doSearch?: () => void;
}
const TextInput = ({
  label,
  value,
  stroke = false,
  doSearch,
  ...props
}: TextInputProps) => {
  const border = stroke ? 'text-input--border' : null;
  const [inputValue, setInputValue] = useState<string>('');

  const handleInputChange = (event: ChangeEvent<HTMLInputElement>) => {
    setInputValue(event.target.value);
  };

  const handleEnter = (event: React.KeyboardEvent<HTMLInputElement>) => {
    if (event.key === 'Enter' && doSearch) {
      doSearch();
    }
  };
  return (
    <input
      type="text"
      placeholder={label}
      className={['text-input', border].join(' ')}
      value={value}
      onChange={handleInputChange}
      onKeyDown={handleEnter}
      {...props}
    />
  );
};

export default TextInput;
